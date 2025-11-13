.class public final Lcom/android/systemui/biometrics/AuthController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/doze/DozeReceiver;


# instance fields
.field public final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field public mAllFingerprintAuthenticatorsRegistered:Z

.field public final mApplicationCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public mBiometricContextListenerJob:Lkotlinx/coroutines/Job;

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mCachedDisplayInfo:Landroid/view/DisplayInfo;

.field public final mCallbacks:Ljava/util/Set;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mContext:Landroid/content/Context;

.field public final mCredentialViewModelProvider:Ljavax/inject/Provider;

.field mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

.field public mCurrentDialogArgs:Lcom/android/internal/os/SomeArgs;

.field public final mDisplay:Landroid/view/Display;

.field public final mExecution:Lcom/android/systemui/util/concurrency/Execution;

.field public final mFaceEnrolledForUser:Landroid/util/SparseBooleanArray;

.field public final mFaceManager:Landroid/hardware/face/FaceManager;

.field public final mFaceProps:Ljava/util/List;

.field public final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public mFingerprintSensorLocation:Landroid/graphics/Point;

.field public final mFpEnrolledForUser:Ljava/util/Map;

.field public mFpProps:Ljava/util/List;

.field public final mHandler:Landroid/os/Handler;

.field public final mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mLogContextInteractor:Ldagger/Lazy;

.field final mOrientationListener:Lcom/android/systemui/biometrics/BiometricDisplayListener;

.field public final mPanelInteractionDetector:Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;

.field public final mPromptSelectorInteractor:Ljavax/inject/Provider;

.field public final mPromptViewModelProvider:Ljavax/inject/Provider;

.field mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

.field public mScaleFactor:F

.field public final mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field public final mSfpsEnrolledForUser:Landroid/util/SparseBooleanArray;

.field public mSidefpsProps:Ljava/util/List;

.field final mTaskStackListener:Landroid/app/TaskStackListener;

.field public mUdfpsBounds:Landroid/graphics/Rect;

.field public mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

.field public final mUdfpsControllerFactory:Ljavax/inject/Provider;

.field public final mUdfpsEnrolledForUser:Landroid/util/SparseBooleanArray;

.field public final mUdfpsLogger:Ldagger/Lazy;

.field public mUdfpsOverlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

.field public mUdfpsProps:Ljava/util/List;

.field public mUdfpsRefreshRateRequestCallback:Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;

.field public final mUdfpsUtils:Lcom/android/systemui/biometrics/UdfpsUtils;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static -$$Nest$mhandleEnrollmentsChanged(Lcom/android/systemui/biometrics/AuthController;IIIZ)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleEnrollmentsChanged, userId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sensorId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasEnrollments: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/keyguard/data/repository/BiometricType;->UNKNOWN:Lcom/android/systemui/keyguard/data/repository/BiometricType;

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthController;->mFpProps:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v4, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    if-ne v4, p3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthController;->mFpEnrolledForUser:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/android/systemui/keyguard/data/repository/BiometricType;->UNDER_DISPLAY_FINGERPRINT:Lcom/android/systemui/keyguard/data/repository/BiometricType;

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsEnrolledForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, p4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnySidefpsType()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/android/systemui/keyguard/data/repository/BiometricType;->SIDE_FINGERPRINT:Lcom/android/systemui/keyguard/data/repository/BiometricType;

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthController;->mSfpsEnrolledForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, p4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    :cond_2
    iget v2, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    sget-object v0, Lcom/android/systemui/keyguard/data/repository/BiometricType;->REAR_FINGERPRINT:Lcom/android/systemui/keyguard/data/repository/BiometricType;

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthController;->mFaceProps:Ljava/util/List;

    if-nez v2, :cond_4

    const-string p3, "handleEnrollmentsChanged, mFaceProps is null"

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v2, v2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    if-ne v2, p3, :cond_5

    iget-object p3, p0, Lcom/android/systemui/biometrics/AuthController;->mFaceEnrolledForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {p3, p2, p4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    sget-object v0, Lcom/android/systemui/keyguard/data/repository/BiometricType;->FACE:Lcom/android/systemui/keyguard/data/repository/BiometricType;

    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mCallbacks:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/biometrics/AuthController$Callback;

    invoke-interface {p3, p1}, Lcom/android/systemui/biometrics/AuthController$Callback;->onEnrollmentsChanged(I)V

    invoke-interface {p3, v0, p2, p4}, Lcom/android/systemui/biometrics/AuthController$Callback;->onEnrollmentsChanged(Lcom/android/systemui/keyguard/data/repository/BiometricType;IZ)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/util/concurrency/Execution;Lcom/android/systemui/statusbar/CommandQueue;Landroid/app/ActivityTaskManager;Landroid/view/WindowManager;Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/face/FaceManager;Ljavax/inject/Provider;Landroid/hardware/display/DisplayManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;Landroid/os/UserManager;Lcom/android/internal/widget/LockPatternUtils;Ldagger/Lazy;Ldagger/Lazy;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/internal/jank/InteractionJankMonitor;Landroid/os/Handler;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/biometrics/UdfpsUtils;Lcom/android/systemui/statusbar/VibratorHelper;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/android/systemui/util/concurrency/Execution;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Landroid/app/ActivityTaskManager;",
            "Landroid/view/WindowManager;",
            "Landroid/hardware/fingerprint/FingerprintManager;",
            "Landroid/hardware/face/FaceManager;",
            "Ljavax/inject/Provider;",
            "Landroid/hardware/display/DisplayManager;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;",
            "Landroid/os/UserManager;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Lcom/android/internal/jank/InteractionJankMonitor;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/biometrics/UdfpsUtils;",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/systemui/biometrics/AuthController;->mBiometricContextListenerJob:Lkotlinx/coroutines/Job;

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v0, Lcom/android/systemui/biometrics/AuthController;->mScaleFactor:F

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/biometrics/AuthController;->mCallbacks:Ljava/util/Set;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/biometrics/AuthController;->mFpEnrolledForUser:Ljava/util/Map;

    new-instance v4, Landroid/view/DisplayInfo;

    invoke-direct {v4}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/biometrics/AuthController;->mCachedDisplayInfo:Landroid/view/DisplayInfo;

    new-instance v4, Lcom/android/systemui/biometrics/AuthController$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/biometrics/AuthController$1;-><init>(Lcom/android/systemui/biometrics/AuthController;)V

    iput-object v4, v0, Lcom/android/systemui/biometrics/AuthController;->mTaskStackListener:Landroid/app/TaskStackListener;

    new-instance v4, Lcom/android/systemui/biometrics/AuthController$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/biometrics/AuthController$2;-><init>(Lcom/android/systemui/biometrics/AuthController;)V

    iput-object v4, v0, Lcom/android/systemui/biometrics/AuthController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object v1, v0, Lcom/android/systemui/biometrics/AuthController;->mContext:Landroid/content/Context;

    move-object v5, p3

    iput-object v5, v0, Lcom/android/systemui/biometrics/AuthController;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    move-object/from16 v5, p13

    iput-object v5, v0, Lcom/android/systemui/biometrics/AuthController;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v5, p14

    iput-object v5, v0, Lcom/android/systemui/biometrics/AuthController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v5, p21

    iput-object v5, v0, Lcom/android/systemui/biometrics/AuthController;->mHandler:Landroid/os/Handler;

    move-object/from16 v6, p22

    iput-object v6, v0, Lcom/android/systemui/biometrics/AuthController;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object v6, p4

    iput-object v6, v0, Lcom/android/systemui/biometrics/AuthController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object v6, p5

    iput-object v6, v0, Lcom/android/systemui/biometrics/AuthController;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    move-object/from16 v6, p7

    iput-object v6, v0, Lcom/android/systemui/biometrics/AuthController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v2, v0, Lcom/android/systemui/biometrics/AuthController;->mFaceManager:Landroid/hardware/face/FaceManager;

    move-object/from16 v6, p9

    iput-object v6, v0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsControllerFactory:Ljavax/inject/Provider;

    move-object/from16 v6, p15

    iput-object v6, v0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsLogger:Ldagger/Lazy;

    move-object v6, p6

    iput-object v6, v0, Lcom/android/systemui/biometrics/AuthController;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v6, p20

    iput-object v6, v0, Lcom/android/systemui/biometrics/AuthController;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v6, v0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsEnrolledForUser:Landroid/util/SparseBooleanArray;

    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v6, v0, Lcom/android/systemui/biometrics/AuthController;->mSfpsEnrolledForUser:Landroid/util/SparseBooleanArray;

    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v6, v0, Lcom/android/systemui/biometrics/AuthController;->mFaceEnrolledForUser:Landroid/util/SparseBooleanArray;

    move-object/from16 v6, p23

    iput-object v6, v0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsUtils:Lcom/android/systemui/biometrics/UdfpsUtils;

    move-object v6, p2

    iput-object v6, v0, Lcom/android/systemui/biometrics/AuthController;->mApplicationCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v6, p24

    iput-object v6, v0, Lcom/android/systemui/biometrics/AuthController;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    move-object/from16 v6, p16

    iput-object v6, v0, Lcom/android/systemui/biometrics/AuthController;->mLogContextInteractor:Ldagger/Lazy;

    move-object/from16 v6, p17

    iput-object v6, v0, Lcom/android/systemui/biometrics/AuthController;->mPromptSelectorInteractor:Ljavax/inject/Provider;

    move-object/from16 v6, p19

    iput-object v6, v0, Lcom/android/systemui/biometrics/AuthController;->mPromptViewModelProvider:Ljavax/inject/Provider;

    move-object/from16 v6, p18

    iput-object v6, v0, Lcom/android/systemui/biometrics/AuthController;->mCredentialViewModelProvider:Ljavax/inject/Provider;

    new-instance v6, Lcom/android/systemui/biometrics/BiometricDisplayListener;

    sget-object v7, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$Generic;->INSTANCE:Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$Generic;

    new-instance v8, Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/AuthController;)V

    move-object p2, v6

    move-object p3, p1

    move-object/from16 p4, p10

    move-object/from16 p5, p21

    move-object p6, v7

    move-object/from16 p7, v8

    invoke-direct/range {p2 .. p7}, Lcom/android/systemui/biometrics/BiometricDisplayListener;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManager;Landroid/os/Handler;Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType;Lkotlin/jvm/functions/Function0;)V

    iput-object v6, v0, Lcom/android/systemui/biometrics/AuthController;->mOrientationListener:Lcom/android/systemui/biometrics/BiometricDisplayListener;

    move-object/from16 v5, p11

    iput-object v5, v0, Lcom/android/systemui/biometrics/AuthController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-object/from16 v5, p12

    iput-object v5, v0, Lcom/android/systemui/biometrics/AuthController;->mPanelInteractionDetector:Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;

    if-eqz v2, :cond_0

    invoke-virtual/range {p8 .. p8}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v3

    :cond_0
    iput-object v3, v0, Lcom/android/systemui/biometrics/AuthController;->mFaceProps:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/biometrics/AuthController;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthController;->updateSensorLocations()V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {p1, v4, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const-class v2, Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorPrivacyManager;

    iput-object v1, v0, Lcom/android/systemui/biometrics/AuthController;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/biometrics/AuthController$Callback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final cancelIfOwnerIsNotInForeground()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    if-eqz v0, :cond_1

    :try_start_0
    check-cast v0, Lcom/android/systemui/biometrics/AuthContainerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthContainerView;->dismissWithoutCallback(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mCallbacks:Ljava/util/Set;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/biometrics/AuthController$Callback;

    invoke-interface {v2}, Lcom/android/systemui/biometrics/AuthController$Callback;->onBiometricPromptDismissed()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    invoke-interface {v1, v2, v0}, Landroid/hardware/biometrics/IBiometricSysuiReceiver;->onDialogDismissed(I[B)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v0, "AuthController"

    const-string v1, "Remote exception"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    return-void
.end method

.method public final dozeTimeTick()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsController;->dozeTimeTick()V

    :cond_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mCachedDisplayInfo="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthController;->mCachedDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mScaleFactor="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/biometrics/AuthController;->mScaleFactor:F

    const-string v3, "  fingerprintSensorLocationInNaturalOrientation="

    invoke-static {v1, v2, p1, v3}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthController;->getFingerprintSensorLocationInNaturalOrientation()Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  fingerprintSensorLocation="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthController;->mFingerprintSensorLocation:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  udfpsBounds="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  allFingerprintAuthenticatorsRegistered="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/biometrics/AuthController;->mAllFingerprintAuthenticatorsRegistered:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "  currentDialog="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/systemui/biometrics/AuthContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/biometrics/AuthContainerView;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final getCurrentReceiver(J)Landroid/hardware/biometrics/IBiometricSysuiReceiver;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    const-string v1, "AuthController"

    if-nez v0, :cond_0

    const-string p0, "shouldNotifyReceiver: dialog already gone"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/android/systemui/biometrics/AuthContainerView;

    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-wide v2, v0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mRequestId:J

    cmp-long p1, p1, v2

    if-eqz p1, :cond_1

    const-string p0, "shouldNotifyReceiver: requestId doesn\'t match"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    if-nez p1, :cond_2

    const-string p1, "getCurrentReceiver: Receiver is null"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    return-object p0
.end method

.method public final getFingerprintSensorLocationInNaturalOrientation()Landroid/graphics/Point;
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthController;->getUdfpsLocation()Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthController;->getUdfpsLocation()Landroid/graphics/Point;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCachedDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070c90

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v1, Landroid/graphics/Point;

    int-to-float v0, v0

    iget v2, p0, Lcom/android/systemui/biometrics/AuthController;->mScaleFactor:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070c91

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget p0, p0, Lcom/android/systemui/biometrics/AuthController;->mScaleFactor:F

    mul-float/2addr v2, p0

    float-to-int p0, v2

    invoke-direct {v1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public final getUdfpsLocation()Landroid/graphics/Point;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getUdfpsRadius()F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsBounds:Landroid/graphics/Rect;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    return p0

    :cond_1
    :goto_0
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public final hideAuthenticationDialog(J)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hideAuthenticationDialog: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    if-nez v0, :cond_0

    const-string p0, "dialog already gone"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    check-cast v0, Lcom/android/systemui/biometrics/AuthContainerView;

    iget-object v2, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-wide v2, v2, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mRequestId:J

    cmp-long v2, p1, v2

    if-eqz v2, :cond_1

    const-string v0, "ignore - ids do not match: "

    const-string v2, " current: "

    invoke-static {v0, p1, p2, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    check-cast p0, Lcom/android/systemui/biometrics/AuthContainerView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-wide v2, p0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mRequestId:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(IZ)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mCallbacks:Ljava/util/Set;

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/biometrics/AuthController$Callback;

    invoke-interface {p2}, Lcom/android/systemui/biometrics/AuthController$Callback;->onBiometricPromptDismissed()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    return-void
.end method

.method public final isOwnerInBackground()Z
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    check-cast v0, Lcom/android/systemui/biometrics/AuthContainerView;

    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object v2, v0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mOpPackageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getClassNameIfItIsConfirmDeviceCredentialActivity()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/biometrics/AuthController;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/biometrics/Utils;->$r8$clinit:I

    const v4, 0x7fffffff

    invoke-virtual {v3, v4}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    const-string v4, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    const/4 v4, 0x1

    if-nez p0, :cond_1

    const-string p0, "android"

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v4

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v0, :cond_2

    move v6, v4

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    if-nez p0, :cond_3

    if-eqz v5, :cond_4

    :cond_3
    if-eqz v6, :cond_6

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    :cond_4
    move v1, v4

    goto :goto_3

    :cond_5
    :goto_2
    const-string p0, "SysUIBiometricUtils"

    const-string v0, "No running tasks reported"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    const-string p0, "Evicting client due to top activity is not : "

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "AuthController"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v1
.end method

.method public final isShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isUdfpsEnrolled(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsEnrolledForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public final isUdfpsSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsProps:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onBiometricAuthenticated(I)V
    .locals 2

    const-string v0, "AuthController"

    const-string v1, "onBiometricAuthenticated: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    if-eqz p0, :cond_1

    check-cast p0, Lcom/android/systemui/biometrics/AuthContainerView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->onAuthenticationSucceeded(I)V

    goto :goto_0

    :cond_0
    const-string p0, "AuthContainerView"

    const-string p1, "onAuthenticationSucceeded(): mBiometricView is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "onBiometricAuthenticated callback but dialog gone"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final onBiometricError(III)V
    .locals 10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onBiometricError(%d, %d, %d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p2, v0, :cond_1

    const/16 v0, 0x9

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    const/4 v4, 0x2

    if-ne p2, v3, :cond_2

    iget-object v5, p0, Lcom/android/systemui/biometrics/AuthController;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {v5, v3, v4}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    const/4 v6, 0x3

    const/16 v7, 0x64

    if-eq p2, v7, :cond_4

    if-eq p2, v6, :cond_4

    const/16 v8, 0x10

    if-eq p2, v8, :cond_4

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move v3, v2

    :cond_4
    :goto_3
    iget-object v8, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    if-eqz v8, :cond_14

    check-cast v8, Lcom/android/systemui/biometrics/AuthContainerView;

    iget-object v8, v8, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object v8, v8, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-static {v8}, Lcom/android/systemui/biometrics/Utils;->isDeviceCredentialAllowed(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result v8

    const-string v9, "AuthContainerView"

    if-eqz v8, :cond_6

    if-eqz v0, :cond_6

    const-string p1, "onBiometricError, lockout"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    check-cast p0, Lcom/android/systemui/biometrics/AuthContainerView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->startTransitionToCredentialUI()V

    goto/16 :goto_9

    :cond_5
    const-string p0, "animateToCredentialUI(): mBiometricView is null"

    invoke-static {v9, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_6
    const-string v0, ""

    const/16 v8, 0x8

    if-eqz v3, :cond_10

    if-eq p2, v7, :cond_a

    if-ne p2, v6, :cond_7

    goto :goto_4

    :cond_7
    if-eq p1, v4, :cond_9

    if-eq p1, v8, :cond_8

    goto :goto_7

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_a
    :goto_4
    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialogArgs:Lcom/android/internal/os/SomeArgs;

    iget p2, p2, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object p3, p0, Lcom/android/systemui/biometrics/AuthController;->mFaceProps:Ljava/util/List;

    if-nez p3, :cond_b

    goto :goto_5

    :cond_b
    iget-object p3, p0, Lcom/android/systemui/biometrics/AuthController;->mFaceEnrolledForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    :goto_5
    if-eqz v2, :cond_d

    iget-object p3, p0, Lcom/android/systemui/biometrics/AuthController;->mFpEnrolledForUser:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    check-cast p3, Ljava/util/HashMap;

    invoke-virtual {p3, p2, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_d

    if-ne p1, v8, :cond_c

    const p2, 0x1040577

    goto :goto_6

    :cond_c
    const p2, 0x1040580

    goto :goto_6

    :cond_d
    const p2, 0x104023e

    :goto_6
    iget-object p3, p0, Lcom/android/systemui/biometrics/AuthController;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    const-string p2, "onBiometricError, soft error: "

    invoke-static {p2, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_e

    new-instance p2, Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/biometrics/AuthController;I)V

    const-wide/16 v0, 0x1f4

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9

    :cond_e
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    check-cast p0, Lcom/android/systemui/biometrics/AuthContainerView;

    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;

    if-eqz p2, :cond_f

    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mFailedModalities:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    check-cast p2, Ljava/util/HashSet;

    invoke-virtual {p2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->onAuthenticationFailed(ILjava/lang/String;)V

    goto :goto_9

    :cond_f
    const-string p0, "onAuthenticationFailed(): mBiometricView is null"

    invoke-static {v9, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_10
    if-eq p1, v4, :cond_12

    if-eq p1, v8, :cond_11

    goto :goto_8

    :cond_11
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_12
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    :goto_8
    const-string p2, "onBiometricError, hard error: "

    invoke-static {p2, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    check-cast p0, Lcom/android/systemui/biometrics/AuthContainerView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;

    if-eqz p0, :cond_13

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->onError(ILjava/lang/String;)V

    goto :goto_9

    :cond_13
    const-string p0, "onError(): mBiometricView is null"

    invoke-static {v9, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_14
    const-string p0, "onBiometricError callback but dialog is gone"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    return-void
.end method

.method public final onBiometricHelp(ILjava/lang/String;)V
    .locals 2

    const-string v0, "onBiometricHelp: "

    const-string v1, "AuthController"

    invoke-static {v0, p2, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    if-eqz p0, :cond_1

    check-cast p0, Lcom/android/systemui/biometrics/AuthContainerView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->onHelp(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "AuthContainerView"

    const-string p1, "onHelp(): mBiometricView is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "onBiometricHelp callback but dialog gone"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthController;->updateSensorLocations()V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    if-eqz p1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/biometrics/AuthContainerView;

    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mPromptViewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    const/4 v1, 0x0

    check-cast p1, Lcom/android/systemui/biometrics/AuthContainerView;

    invoke-virtual {p1, v1}, Lcom/android/systemui/biometrics/AuthContainerView;->dismissWithoutCallback(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialogArgs:Lcom/android/internal/os/SomeArgs;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/systemui/biometrics/AuthController;->showDialog(Lcom/android/internal/os/SomeArgs;ZLcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;)V

    :cond_0
    return-void
.end method

.method public final removeCallback(Lcom/android/systemui/biometrics/AuthController$Callback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mCallbacks:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public rotateToCurrentOrientation(Landroid/graphics/Point;Landroid/view/DisplayInfo;)Landroid/graphics/Point;
    .locals 1

    iget p0, p2, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {p2}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result p2

    invoke-static {p1, p0, v0, p2}, Landroid/util/RotationUtils;->rotatePoint(Landroid/graphics/Point;III)V

    return-object p1
.end method

.method public final sendResultAndCleanUp(I[B)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    const-string v1, "AuthController"

    if-nez v0, :cond_0

    const-string p0, "sendResultAndCleanUp: Receiver is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/IBiometricSysuiReceiver;->onDialogDismissed(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "Remote exception"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-string p2, "onDialogDismissed: "

    invoke-static {p1, p2, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    if-nez p1, :cond_1

    const-string p1, "Dialog already dismissed"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mCallbacks:Ljava/util/Set;

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/biometrics/AuthController$Callback;

    invoke-interface {p2}, Lcom/android/systemui/biometrics/AuthController$Callback;->onBiometricPromptDismissed()V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    return-void
.end method

.method public final setBiometricContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mBiometricContextListenerJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mLogContextInteractor:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractor;

    check-cast v0, Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl;->addBiometricContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mBiometricContextListenerJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setUdfpsRefreshRateCallback(Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsRefreshRateRequestCallback:Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;

    return-void
.end method

.method public final showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;J)V
    .locals 12

    move-object v0, p0

    move-object v1, p3

    move-wide/from16 v2, p7

    move-wide/from16 v4, p10

    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    array-length v8, v1

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v8, :cond_0

    aget v11, v1, v10

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    const-string v8, "showAuthenticationDialog, authenticators: "

    const-string v10, ", sensorIds: "

    invoke-static {v6, v8, v10}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", credentialAllowed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", requireConfirmation: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p5

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", operationId: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", requestId: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v10, "AuthController"

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v6

    move-object v11, p1

    iput-object v11, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v11, p2

    iput-object v11, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object v1, v6, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v6, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v6, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    move/from16 v1, p6

    iput v1, v6, Lcom/android/internal/os/SomeArgs;->argi1:I

    move-object/from16 v1, p9

    iput-object v1, v6, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    iput-wide v2, v6, Lcom/android/internal/os/SomeArgs;->argl1:J

    iput-wide v4, v6, Lcom/android/internal/os/SomeArgs;->argl2:J

    iget-object v1, v0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mCurrentDialog: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    :cond_1
    iget-object v1, v0, Lcom/android/systemui/biometrics/AuthController;->mPromptViewModelProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    invoke-virtual {p0, v6, v9, v1}, Lcom/android/systemui/biometrics/AuthController;->showDialog(Lcom/android/internal/os/SomeArgs;ZLcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;)V

    return-void
.end method

.method public final showDialog(Lcom/android/internal/os/SomeArgs;ZLcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialogArgs:Lcom/android/internal/os/SomeArgs;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/biometrics/PromptInfo;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, [I

    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-wide v7, v1, Lcom/android/internal/os/SomeArgs;->argl1:J

    iget-wide v9, v1, Lcom/android/internal/os/SomeArgs;->argl2:J

    iget-object v15, v0, Lcom/android/systemui/biometrics/AuthController;->mUserManager:Landroid/os/UserManager;

    iget-object v14, v0, Lcom/android/systemui/biometrics/AuthController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v12, Lcom/android/systemui/biometrics/AuthContainerView$Config;

    invoke-direct {v12}, Lcom/android/systemui/biometrics/AuthContainerView$Config;-><init>()V

    iget-object v11, v0, Lcom/android/systemui/biometrics/AuthController;->mContext:Landroid/content/Context;

    iput-object v11, v12, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mContext:Landroid/content/Context;

    iput-object v0, v12, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mCallback:Lcom/android/systemui/biometrics/AuthController;

    iput-object v2, v12, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    iput-boolean v4, v12, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mRequireConfirmation:Z

    iput v5, v12, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mUserId:I

    iput-object v6, v12, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mOpPackageName:Ljava/lang/String;

    move/from16 v4, p2

    iput-boolean v4, v12, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mSkipIntro:Z

    iput-wide v7, v12, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mOperationId:J

    iput-wide v9, v12, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mRequestId:J

    iput-object v3, v12, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mSensorIds:[I

    new-instance v3, Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/AuthController;)V

    new-instance v3, Lcom/android/systemui/biometrics/AuthContainerView;

    iget-object v4, v0, Lcom/android/systemui/biometrics/AuthController;->mFpProps:Ljava/util/List;

    iget-object v6, v0, Lcom/android/systemui/biometrics/AuthController;->mFaceProps:Ljava/util/List;

    iget-object v7, v0, Lcom/android/systemui/biometrics/AuthController;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    iget-object v8, v0, Lcom/android/systemui/biometrics/AuthController;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v9, v0, Lcom/android/systemui/biometrics/AuthController;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    iget-object v13, v0, Lcom/android/systemui/biometrics/AuthController;->mApplicationCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v10, v0, Lcom/android/systemui/biometrics/AuthController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v11, v0, Lcom/android/systemui/biometrics/AuthController;->mPanelInteractionDetector:Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;

    move-object/from16 v26, v2

    iget-object v2, v0, Lcom/android/systemui/biometrics/AuthController;->mPromptSelectorInteractor:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/biometrics/AuthController;->mCredentialViewModelProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v11

    move-object v11, v3

    move-object/from16 v19, v14

    move-object v14, v4

    move-object v4, v15

    move-object v15, v6

    move-object/from16 v16, v10

    move-object/from16 v18, v4

    move-object/from16 v20, v7

    move-object/from16 v21, v2

    move-object/from16 v22, p3

    move-object/from16 v23, v1

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    invoke-direct/range {v11 .. v25}, Lcom/android/systemui/biometrics/AuthContainerView;-><init>(Lcom/android/systemui/biometrics/AuthContainerView$Config;Lkotlinx/coroutines/CoroutineScope;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;Landroid/os/UserManager;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/jank/InteractionJankMonitor;Ljavax/inject/Provider;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Ljavax/inject/Provider;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/VibratorHelper;)V

    const-string/jumbo v1, "userId: "

    const-string v2, " mCurrentDialog: "

    invoke-static {v5, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " newDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AuthController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    check-cast v1, Lcom/android/systemui/biometrics/AuthContainerView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/biometrics/AuthContainerView;->dismissWithoutCallback(Z)V

    :cond_0
    move-object/from16 v1, p1

    iget-object v1, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    iput-object v1, v0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    iget-object v1, v0, Lcom/android/systemui/biometrics/AuthController;->mCallbacks:Ljava/util/Set;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/biometrics/AuthController$Callback;

    invoke-interface {v2}, Lcom/android/systemui/biometrics/AuthController$Callback;->onBiometricPromptShown()V

    goto :goto_0

    :cond_1
    iput-object v3, v0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    invoke-virtual/range {v26 .. v26}, Landroid/hardware/biometrics/PromptInfo;->isAllowBackgroundAuthentication()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/biometrics/AuthController;->isOwnerInBackground()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/biometrics/AuthController;->cancelIfOwnerIsNotInForeground()V

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthController;->mWindowManager:Landroid/view/WindowManager;

    check-cast v1, Lcom/android/systemui/biometrics/AuthContainerView;

    iget-object v2, v1, Lcom/android/systemui/biometrics/AuthContainerView;->mWindowToken:Landroid/os/IBinder;

    iget-object v3, v1, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object v3, v3, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v3}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/biometrics/AuthContainerView;->getLayoutParams(Landroid/os/IBinder;Ljava/lang/CharSequence;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method public final start()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/systemui/biometrics/AuthController$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/AuthController$6;-><init>(Lcom/android/systemui/biometrics/AuthController;)V

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/systemui/biometrics/AuthController$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/AuthController$7;-><init>(Lcom/android/systemui/biometrics/AuthController;)V

    invoke-virtual {v0, v1}, Landroid/hardware/face/FaceManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mTaskStackListener:Landroid/app/TaskStackListener;

    invoke-virtual {v0, v1}, Landroid/app/ActivityTaskManager;->registerTaskStackListener(Landroid/app/TaskStackListener;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mOrientationListener:Lcom/android/systemui/biometrics/BiometricDisplayListener;

    iget-object v1, v0, Lcom/android/systemui/biometrics/BiometricDisplayListener;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/android/systemui/biometrics/BiometricDisplayListener;->cachedDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    :cond_2
    iget-object v1, v0, Lcom/android/systemui/biometrics/BiometricDisplayListener;->displayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, v0, Lcom/android/systemui/biometrics/BiometricDisplayListener;->handler:Landroid/os/Handler;

    const-wide/16 v3, 0x4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthController;->updateSensorLocations()V

    return-void
.end method

.method public final updateSensorLocations()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mCachedDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCachedDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsUtils:Lcom/android/systemui/biometrics/UdfpsUtils;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-static {v1}, Landroid/util/DisplayUtils;->getMaximumResolutionDisplayMode([Landroid/view/Display$Mode;)Landroid/view/Display$Mode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v0

    invoke-static {v2, v1, v3, v0}, Landroid/util/DisplayUtils;->getPhysicalPixelDisplaySizeRatio(IIII)F

    move-result v0

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    iput v0, p0, Lcom/android/systemui/biometrics/AuthController;->mScaleFactor:F

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthController;->updateUdfpsLocation()V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mFpProps:Ljava/util/List;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mFingerprintSensorLocation:Landroid/graphics/Point;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthController;->getFingerprintSensorLocationInNaturalOrientation()Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mCachedDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/biometrics/AuthController;->rotateToCurrentOrientation(Landroid/graphics/Point;Landroid/view/DisplayInfo;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mFingerprintSensorLocation:Landroid/graphics/Point;

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mCallbacks:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/biometrics/AuthController$Callback;

    invoke-interface {v0}, Lcom/android/systemui/biometrics/AuthController$Callback;->onFingerprintLocationChanged()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final updateUdfpsLocation()V
    .locals 14

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsProps:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsOverlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->getLocation()Landroid/hardware/biometrics/SensorLocationInternal;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/biometrics/SensorLocationInternal;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsBounds:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/systemui/biometrics/AuthController;->mScaleFactor:F

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->scale(F)V

    new-instance v8, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/biometrics/AuthController;->mCachedDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v4}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/android/systemui/biometrics/AuthController;->mCachedDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v5}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/biometrics/AuthController;->mCachedDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v6}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v6

    invoke-direct {v8, v1, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    iget-object v7, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/biometrics/AuthController;->mCachedDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v4}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v9

    iget-object v4, p0, Lcom/android/systemui/biometrics/AuthController;->mCachedDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v4}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v10

    iget v11, p0, Lcom/android/systemui/biometrics/AuthController;->mScaleFactor:F

    iget-object v4, p0, Lcom/android/systemui/biometrics/AuthController;->mCachedDisplayInfo:Landroid/view/DisplayInfo;

    iget v12, v4, Landroid/view/DisplayInfo;->rotation:I

    iget v13, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    move-object v6, v1

    invoke-direct/range {v6 .. v13}, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;IIFII)V

    iput-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsOverlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    iget-object v4, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    iget-object v5, v4, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v5, v5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget v6, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    if-eq v5, v6, :cond_0

    iput-object v0, v4, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    const-string v0, "UdfpsController"

    const-string/jumbo v5, "updateUdfpsParams | sensorId has changed"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v4, Lcom/android/systemui/biometrics/UdfpsController;->mOverlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object v1, v4, Lcom/android/systemui/biometrics/UdfpsController;->mOverlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    sget-object v0, Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;->INSTANCE:Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    iget-object v0, v4, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    iget v5, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestReason:I

    if-ne v5, v1, :cond_1

    iget-object v1, v4, Lcom/android/systemui/biometrics/UdfpsController;->mOverlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    sget-object v4, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    iget-object v1, v1, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->sensorBounds:Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayTouchView:Lcom/android/systemui/biometrics/ui/view/UdfpsTouchOverlay;

    if-eqz v1, :cond_2

    iget-object v4, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->addViewRunnable:Lcom/android/systemui/biometrics/UdfpsControllerOverlay$addViewNowOrLater$$inlined$Runnable$1;

    if-nez v4, :cond_2

    iget-object v4, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object v5, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->coreLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->updateDimensions(Landroid/view/WindowManager$LayoutParams;Lcom/android/systemui/biometrics/UdfpsAnimationViewController;)V

    invoke-interface {v4, v1, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v4}, Lcom/android/systemui/biometrics/UdfpsController;->hideUdfpsOverlay()V

    invoke-virtual {v4, v0}, Lcom/android/systemui/biometrics/UdfpsController;->showUdfpsOverlay(Lcom/android/systemui/biometrics/UdfpsControllerOverlay;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsBounds:Landroid/graphics/Rect;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsOverlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCallbacks:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/biometrics/AuthController$Callback;

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsOverlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    invoke-interface {v1, v2}, Lcom/android/systemui/biometrics/AuthController$Callback;->onUdfpsLocationChanged(Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;)V

    goto :goto_1

    :cond_4
    return-void
.end method
