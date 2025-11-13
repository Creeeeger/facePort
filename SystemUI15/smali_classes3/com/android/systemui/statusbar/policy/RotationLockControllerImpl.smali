.class public final Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/RotationLockController;


# instance fields
.field public final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mRotationPolicy:Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;

.field public final mRotationPolicyListener:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;[Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicy:Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;

    array-length p0, p3

    const/4 p3, 0x1

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p0, -0x1

    invoke-interface {p1, v1, p0}, Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;->registerRotationPolicyListener(Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;I)V

    if-eqz p3, :cond_2

    iget-object p0, p2, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mLogger:Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object p3, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger$logListeningChange$2;->INSTANCE:Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger$logListeningChange$2;

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v1, "DSRotateLockSettingCon"

    invoke-virtual {p0, v1, p1, p3, v0}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lcom/android/systemui/log/LogMessageImpl;

    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    new-instance p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController$$ExternalSyntheticLambda0;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p2, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    iget-object p3, p2, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mMainExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p3, p0}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    new-instance p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController$$ExternalSyntheticLambda1;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p2, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mDeviceStateRotationLockSettingsManager:Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;

    iget-object p1, p1, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mListeners:Ljava/util/Set;

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicy:Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;

    invoke-interface {p0}, Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;->isRotationLocked()Z

    move-result v0

    invoke-interface {p0}, Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;->isRotationLockToggleVisible()Z

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;->onRotationLockStateChanged(ZZ)V

    return-void
.end method

.method public final getRotationLockOrientation()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicy:Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;

    invoke-interface {p0}, Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;->getRotationLockOrientation()I

    move-result p0

    return p0
.end method

.method public final isCameraRotationEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicy:Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;

    invoke-interface {p0}, Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;->isCameraRotationEnabled()Z

    move-result p0

    return p0
.end method

.method public final isRotationLocked()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicy:Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;

    invoke-interface {p0}, Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;->isRotationLocked()Z

    move-result p0

    return p0
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setRotationLocked(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicy:Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;

    invoke-interface {p0, p2, p1}, Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;->setRotationLock(ZLjava/lang/String;)V

    return-void
.end method

.method public final setRotationLockedAtAngle(ILjava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicy:Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;

    invoke-interface {p0, p3, p1, p2}, Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;->setRotationLockAtAngle(ZILjava/lang/String;)V

    return-void
.end method
