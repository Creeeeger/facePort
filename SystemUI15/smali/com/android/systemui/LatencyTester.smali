.class public final Lcom/android/systemui/LatencyTester;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# static fields
.field public static final DEFAULT_ENABLED:Z


# instance fields
.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mBroadcastReceiver:Lcom/android/systemui/LatencyTester$1;

.field public final mDeviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

.field public mEnabled:Z

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;


# direct methods
.method public static -$$Nest$mfakeWakeAndUnlock(Lcom/android/systemui/LatencyTester;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/LatencyTester;->mEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/LatencyTester;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    iget-object p0, p0, Lcom/android/systemui/LatencyTester;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-ne p1, v0, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFaceAuthenticated(IZ)V

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v0, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFingerprintAuthenticated(IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    sput-boolean v0, Lcom/android/systemui/LatencyTester;->DEFAULT_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/LatencyTester$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/LatencyTester$1;-><init>(Lcom/android/systemui/LatencyTester;)V

    iput-object v0, p0, Lcom/android/systemui/LatencyTester;->mBroadcastReceiver:Lcom/android/systemui/LatencyTester$1;

    iput-object p1, p0, Lcom/android/systemui/LatencyTester;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p2, p0, Lcom/android/systemui/LatencyTester;->mDeviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    iput-object p4, p0, Lcom/android/systemui/LatencyTester;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p5, p0, Lcom/android/systemui/LatencyTester;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/LatencyTester;->updateEnabled()V

    new-instance p1, Lcom/android/systemui/LatencyTester$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/LatencyTester$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/LatencyTester;)V

    const-string p0, "latency_tracker"

    invoke-virtual {p2, p0, p3, p1}, Lcom/android/systemui/util/DeviceConfigProxy;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mEnabled="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/LatencyTester;->mEnabled:Z

    invoke-static {p2, p0, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public final start()V
    .locals 0

    return-void
.end method

.method public final updateEnabled()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/LatencyTester;->mEnabled:Z

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/LatencyTester;->mDeviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    const-string v2, "latency_tracker"

    const-string v3, "enabled"

    sget-boolean v4, Lcom/android/systemui/LatencyTester;->DEFAULT_ENABLED:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/util/DeviceConfigProxy;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/LatencyTester;->mEnabled:Z

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/LatencyTester;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    if-eqz v1, :cond_1

    const-string v1, "com.android.systemui.latency.ACTION_FINGERPRINT_WAKE"

    const-string v2, "com.android.systemui.latency.ACTION_FACE_WAKE"

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/LatencyTester;->mBroadcastReceiver:Lcom/android/systemui/LatencyTester$1;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/LatencyTester;->mBroadcastReceiver:Lcom/android/systemui/LatencyTester$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    :goto_1
    return-void
.end method
