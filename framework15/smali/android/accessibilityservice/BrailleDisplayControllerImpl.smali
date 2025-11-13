.class public final Landroid/accessibilityservice/BrailleDisplayControllerImpl;
.super Ljava/lang/Object;
.source "BrailleDisplayControllerImpl.java"

# interfaces
.implements Landroid/accessibilityservice/BrailleDisplayController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;
    }
.end annotation


# static fields
.field private static final blacklist IS_HIDRAW_SUPPORTED:Z


# instance fields
.field private final blacklist mAccessibilityService:Landroid/accessibilityservice/AccessibilityService;

.field private blacklist mBrailleDisplayConnection:Landroid/accessibilityservice/IBrailleDisplayConnection;

.field private blacklist mCallback:Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;

.field private blacklist mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mIsHidrawSupported:Z

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method public static synthetic blacklist $r8$lambda$KHcEJn3pcti7FkPq9fG-Dv1PLh8(Landroid/accessibilityservice/BrailleDisplayControllerImpl;Landroid/bluetooth/BluetoothDevice;Landroid/accessibilityservice/IAccessibilityServiceConnection;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->lambda$connect$0(Landroid/bluetooth/BluetoothDevice;Landroid/accessibilityservice/IAccessibilityServiceConnection;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$se_al-kR4RiGxEP4kgmHPxOw1AE(Landroid/accessibilityservice/BrailleDisplayControllerImpl;Landroid/hardware/usb/UsbDevice;Landroid/accessibilityservice/IAccessibilityServiceConnection;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->lambda$connect$1(Landroid/hardware/usb/UsbDevice;Landroid/accessibilityservice/IAccessibilityServiceConnection;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBrailleDisplayConnection(Landroid/accessibilityservice/BrailleDisplayControllerImpl;)Landroid/accessibilityservice/IBrailleDisplayConnection;
    .locals 0

    iget-object p0, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mBrailleDisplayConnection:Landroid/accessibilityservice/IBrailleDisplayConnection;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/accessibilityservice/BrailleDisplayControllerImpl;)Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;
    .locals 0

    iget-object p0, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mCallback:Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbackExecutor(Landroid/accessibilityservice/BrailleDisplayControllerImpl;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/accessibilityservice/BrailleDisplayControllerImpl;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBrailleDisplayConnection(Landroid/accessibilityservice/BrailleDisplayControllerImpl;Landroid/accessibilityservice/IBrailleDisplayConnection;)V
    .locals 0

    iput-object p1, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mBrailleDisplayConnection:Landroid/accessibilityservice/IBrailleDisplayConnection;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearConnectionLocked(Landroid/accessibilityservice/BrailleDisplayControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->clearConnectionLocked()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.accessibility.support_hidraw"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->IS_HIDRAW_SUPPORTED:Z

    return-void
.end method

.method constructor blacklist <init>(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/Object;)V
    .locals 1

    sget-boolean v0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->IS_HIDRAW_SUPPORTED:Z

    invoke-direct {p0, p1, p2, v0}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;-><init>(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/Object;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mAccessibilityService:Landroid/accessibilityservice/AccessibilityService;

    iput-object p2, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mLock:Ljava/lang/Object;

    iput-boolean p3, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mIsHidrawSupported:Z

    return-void
.end method

.method private blacklist clearConnectionLocked()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mBrailleDisplayConnection:Landroid/accessibilityservice/IBrailleDisplayConnection;

    return-void
.end method

.method private blacklist connect(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer<",
            "Landroid/accessibilityservice/IAccessibilityServiceConnection;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;",
            ")V"
        }
    .end annotation

    invoke-static {}, Landroid/accessibilityservice/BrailleDisplayController;->checkApiFlagIsEnabled()V

    iget-boolean v0, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mIsHidrawSupported:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Landroid/accessibilityservice/BrailleDisplayControllerImpl$$ExternalSyntheticLambda0;-><init>(Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mAccessibilityService:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p2, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mCallback:Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1, v0}, Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;->acceptOrThrow(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Accessibility service is not connected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This service already has a connected Braille display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private synthetic blacklist lambda$connect$0(Landroid/bluetooth/BluetoothDevice;Landroid/accessibilityservice/IAccessibilityServiceConnection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    nop

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;-><init>(Landroid/accessibilityservice/BrailleDisplayControllerImpl;Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper-IA;)V

    invoke-interface {p2, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->connectBluetoothBrailleDisplay(Ljava/lang/String;Landroid/accessibilityservice/IBrailleDisplayController;)V

    return-void
.end method

.method private synthetic blacklist lambda$connect$1(Landroid/hardware/usb/UsbDevice;Landroid/accessibilityservice/IAccessibilityServiceConnection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;-><init>(Landroid/accessibilityservice/BrailleDisplayControllerImpl;Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper-IA;)V

    invoke-interface {p2, p1, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->connectUsbBrailleDisplay(Landroid/hardware/usb/UsbDevice;Landroid/accessibilityservice/IBrailleDisplayController;)V

    return-void
.end method

.method static synthetic blacklist lambda$connect$2(Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;->onConnectionFailed(I)V

    return-void
.end method


# virtual methods
.method public whitelist connect(Landroid/bluetooth/BluetoothDevice;Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mAccessibilityService:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->connect(Landroid/bluetooth/BluetoothDevice;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;)V

    return-void
.end method

.method public whitelist connect(Landroid/bluetooth/BluetoothDevice;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/accessibilityservice/BrailleDisplayControllerImpl$$ExternalSyntheticLambda1;-><init>(Landroid/accessibilityservice/BrailleDisplayControllerImpl;Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v0, p2, p3}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->connect(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;)V

    return-void
.end method

.method public whitelist connect(Landroid/hardware/usb/UsbDevice;Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mAccessibilityService:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->connect(Landroid/hardware/usb/UsbDevice;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;)V

    return-void
.end method

.method public whitelist connect(Landroid/hardware/usb/UsbDevice;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Landroid/accessibilityservice/BrailleDisplayControllerImpl$$ExternalSyntheticLambda2;-><init>(Landroid/accessibilityservice/BrailleDisplayControllerImpl;Landroid/hardware/usb/UsbDevice;)V

    invoke-direct {p0, v0, p2, p3}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->connect(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;)V

    return-void
.end method

.method public whitelist disconnect()V
    .locals 3

    invoke-static {}, Landroid/accessibilityservice/BrailleDisplayController;->checkApiFlagIsEnabled()V

    iget-object v0, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mBrailleDisplayConnection:Landroid/accessibilityservice/IBrailleDisplayConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mBrailleDisplayConnection:Landroid/accessibilityservice/IBrailleDisplayConnection;

    invoke-interface {v1}, Landroid/accessibilityservice/IBrailleDisplayConnection;->disconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->clearConnectionLocked()V

    nop

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    :try_start_3
    invoke-direct {p0}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->clearConnectionLocked()V

    nop

    throw v1

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public whitelist isConnected()Z
    .locals 1

    invoke-static {}, Landroid/accessibilityservice/BrailleDisplayController;->checkApiFlagIsEnabled()V

    iget-object v0, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mBrailleDisplayConnection:Landroid/accessibilityservice/IBrailleDisplayConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist write([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/accessibilityservice/BrailleDisplayController;->checkApiFlagIsEnabled()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    invoke-static {}, Landroid/os/IBinder;->getSuggestedMaxIpcSizeBytes()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mBrailleDisplayConnection:Landroid/accessibilityservice/IBrailleDisplayConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->mBrailleDisplayConnection:Landroid/accessibilityservice/IBrailleDisplayConnection;

    invoke-interface {v1, p1}, Landroid/accessibilityservice/IBrailleDisplayConnection;->write([B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Braille display is not connected"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid write buffer size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
