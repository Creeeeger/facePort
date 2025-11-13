.class public final Landroid/app/UiAutomationConnection;
.super Landroid/app/IUiAutomationConnection$Stub;
.source "UiAutomationConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/UiAutomationConnection$Repeater;
    }
.end annotation


# static fields
.field private static final greylist-max-o INITIAL_FROZEN_ROTATION_UNSPECIFIED:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "UiAutomationConnection"


# instance fields
.field private final greylist-max-o mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

.field private final blacklist mActivityManager:Landroid/app/IActivityManager;

.field private greylist-max-o mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field private greylist-max-o mInitialFrozenRotation:I

.field private greylist-max-o mIsShutdown:Z

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mOwningUid:I

.field private final blacklist mPermissionManager:Landroid/permission/IPermissionManager;

.field private final greylist-max-o mToken:Landroid/os/Binder;

.field private final greylist-max-o mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor greylist-max-r <init>()V
    .locals 1

    .line 98
    invoke-direct {p0}, Landroid/app/IUiAutomationConnection$Stub;-><init>()V

    .line 73
    nop

    .line 74
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    .line 76
    nop

    .line 77
    const-string v0, "accessibility"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    .line 79
    nop

    .line 80
    const-string/jumbo v0, "permissionmgr"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/permission/IPermissionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/permission/IPermissionManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mPermissionManager:Landroid/permission/IPermissionManager;

    .line 82
    nop

    .line 83
    const-string v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mActivityManager:Landroid/app/IActivityManager;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    .line 87
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mToken:Landroid/os/Binder;

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/UiAutomationConnection;->mInitialFrozenRotation:I

    .line 99
    return-void
.end method

.method private greylist-max-o isConnectedLocked()Z
    .locals 1

    .line 608
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o registerUiTestAutomationServiceLocked(Landroid/accessibilityservice/IAccessibilityServiceClient;I)V
    .locals 5
    .param p1, "client"    # Landroid/accessibilityservice/IAccessibilityServiceClient;
    .param p2, "flags"    # I

    .line 543
    nop

    .line 544
    const-string v0, "accessibility"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 543
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    .line 545
    .local v0, "manager":Landroid/view/accessibility/IAccessibilityManager;
    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    .line 546
    .local v1, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    const/4 v2, -0x1

    iput v2, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 547
    const/16 v2, 0x10

    iput v2, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 548
    iget v2, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    const v3, 0x10012

    or-int/2addr v2, v3

    iput v2, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 551
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setCapabilities(I)V

    .line 558
    :try_start_0
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v2, p1, v1, p2}, Landroid/view/accessibility/IAccessibilityManager;->registerUiTestAutomationService(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;I)V

    .line 559
    iput-object p1, p0, Landroid/app/UiAutomationConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    nop

    .line 563
    return-void

    .line 560
    :catch_0
    move-exception v2

    .line 561
    .local v2, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Error while registering UiTestAutomationService."

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private greylist-max-o restoreRotationStateLocked()V
    .locals 2

    .line 593
    :try_start_0
    iget v0, p0, Landroid/app/UiAutomationConnection;->mInitialFrozenRotation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 596
    iget-object v1, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->freezeRotation(I)V

    goto :goto_0

    .line 600
    :cond_0
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    :goto_0
    goto :goto_1

    .line 602
    :catch_0
    move-exception v0

    .line 605
    :goto_1
    return-void
.end method

.method private greylist-max-o storeRotationStateLocked()V
    .locals 1

    .line 581
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->isRotationFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->getDefaultDisplayRotation()I

    move-result v0

    iput v0, p0, Landroid/app/UiAutomationConnection;->mInitialFrozenRotation:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :cond_0
    goto :goto_0

    .line 586
    :catch_0
    move-exception v0

    .line 589
    :goto_0
    return-void
.end method

.method private greylist-max-o throwIfCalledByNotTrustedUidLocked()V
    .locals 3

    .line 624
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 625
    .local v0, "callingUid":I
    iget v1, p0, Landroid/app/UiAutomationConnection;->mOwningUid:I

    if-eq v0, v1, :cond_1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 627
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Calling from not trusted UID!"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 629
    :cond_1
    :goto_0
    return-void
.end method

.method private greylist-max-o throwIfNotConnectedLocked()V
    .locals 2

    .line 618
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->isConnectedLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    return-void

    .line 619
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwIfShutdownLocked()V
    .locals 2

    .line 612
    iget-boolean v0, p0, Landroid/app/UiAutomationConnection;->mIsShutdown:Z

    if-nez v0, :cond_0

    .line 615
    return-void

    .line 613
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection shutdown!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o unregisterUiTestAutomationServiceLocked()V
    .locals 4

    .line 566
    nop

    .line 567
    const-string v0, "accessibility"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 566
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    .line 571
    .local v0, "manager":Landroid/view/accessibility/IAccessibilityManager;
    :try_start_0
    iget-object v1, p0, Landroid/app/UiAutomationConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v0, v1}, Landroid/view/accessibility/IAccessibilityManager;->unregisterUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;)V

    .line 572
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/UiAutomationConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    nop

    .line 577
    return-void

    .line 573
    :catch_0
    move-exception v1

    .line 574
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Error while unregistering UiTestAutomationService"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public blacklist adoptShellPermissionIdentity(I[Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 369
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 370
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 371
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 372
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 373
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 374
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 376
    .local v0, "identity":J
    :try_start_1
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v2, p1, p2}, Landroid/app/IActivityManager;->startDelegateShellPermissionIdentity(I[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 379
    nop

    .line 380
    return-void

    .line 378
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 379
    throw v2

    .line 373
    .end local v0    # "identity":J
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public greylist-max-o clearWindowAnimationFrameStats()V
    .locals 3

    .line 304
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 305
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 306
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 307
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 308
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 309
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 311
    .local v0, "identity":J
    :try_start_1
    invoke-static {}, Landroid/view/SurfaceControl;->clearAnimationFrameStats()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    nop

    .line 315
    return-void

    .line 313
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    throw v2

    .line 308
    .end local v0    # "identity":J
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public greylist-max-o clearWindowContentFrameStats(I)Z
    .locals 5
    .param p1, "windowId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 266
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 267
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 268
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 269
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 270
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 272
    .local v1, "identity":J
    :try_start_1
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v3, p1, v0}, Landroid/view/accessibility/IAccessibilityManager;->getWindowToken(II)Landroid/os/IBinder;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    .local v3, "token":Landroid/os/IBinder;
    if-nez v3, :cond_0

    .line 274
    const/4 v4, 0x0

    .line 278
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 274
    return v4

    .line 276
    :cond_0
    :try_start_2
    iget-object v4, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v4, v3}, Landroid/view/IWindowManager;->clearWindowContentFrameStats(Landroid/os/IBinder;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 276
    return v4

    .line 278
    .end local v3    # "token":Landroid/os/IBinder;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 279
    throw v3

    .line 268
    .end local v0    # "callingUserId":I
    .end local v1    # "identity":J
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public greylist-max-o connect(Landroid/accessibilityservice/IAccessibilityServiceClient;I)V
    .locals 3
    .param p1, "client"    # Landroid/accessibilityservice/IAccessibilityServiceClient;
    .param p2, "flags"    # I

    .line 103
    if-eqz p1, :cond_1

    .line 106
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 108
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->isConnectedLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Landroid/app/UiAutomationConnection;->mOwningUid:I

    .line 112
    invoke-direct {p0, p1, p2}, Landroid/app/UiAutomationConnection;->registerUiTestAutomationServiceLocked(Landroid/accessibilityservice/IAccessibilityServiceClient;I)V

    .line 113
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->storeRotationStateLocked()V

    .line 114
    monitor-exit v0

    .line 115
    return-void

    .line 109
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already connected."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/UiAutomationConnection;
    .end local p1    # "client":Landroid/accessibilityservice/IAccessibilityServiceClient;
    .end local p2    # "flags":I
    throw v1

    .line 114
    .restart local p0    # "this":Landroid/app/UiAutomationConnection;
    .restart local p1    # "client":Landroid/accessibilityservice/IAccessibilityServiceClient;
    .restart local p2    # "flags":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 104
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Client cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o disconnect()V
    .locals 3

    .line 119
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 121
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 122
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->isConnectedLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/UiAutomationConnection;->mOwningUid:I

    .line 126
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->unregisterUiTestAutomationServiceLocked()V

    .line 127
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->restoreRotationStateLocked()V

    .line 128
    monitor-exit v0

    .line 129
    return-void

    .line 123
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already disconnected."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/UiAutomationConnection;
    throw v1

    .line 128
    .restart local p0    # "this":Landroid/app/UiAutomationConnection;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist dropShellPermissionIdentity()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 384
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 385
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 386
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 387
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 388
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 389
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 391
    .local v0, "identity":J
    :try_start_1
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v2}, Landroid/app/IActivityManager;->stopDelegateShellPermissionIdentity()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 393
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 394
    nop

    .line 395
    return-void

    .line 393
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 394
    throw v2

    .line 388
    .end local v0    # "identity":J
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public greylist-max-o executeShellCommand(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "sink"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "source"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 446
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/UiAutomationConnection;->executeShellCommandWithStderr(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    .line 447
    return-void
.end method

.method public blacklist executeShellCommandWithStderr(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    .locals 16
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "sink"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "source"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "stderrSink"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 453
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    iget-object v1, v10, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 454
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 455
    invoke-direct/range {p0 .. p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 456
    invoke-direct/range {p0 .. p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 457
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 464
    .local v9, "process":Ljava/lang/Process;
    nop

    .line 468
    if-eqz p2, :cond_0

    .line 469
    invoke-virtual {v9}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 470
    .local v0, "sink_in":Ljava/io/InputStream;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 472
    .local v1, "sink_out":Ljava/io/OutputStream;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Landroid/app/UiAutomationConnection$Repeater;

    invoke-direct {v3, v10, v0, v1}, Landroid/app/UiAutomationConnection$Repeater;-><init>(Landroid/app/UiAutomationConnection;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 473
    .local v2, "readFromProcess":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 474
    .end local v0    # "sink_in":Ljava/io/InputStream;
    .end local v1    # "sink_out":Ljava/io/OutputStream;
    move-object v0, v2

    goto :goto_0

    .line 475
    .end local v2    # "readFromProcess":Ljava/lang/Thread;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    .line 480
    .local v0, "readFromProcess":Ljava/lang/Thread;
    :goto_0
    if-eqz p3, :cond_1

    .line 481
    invoke-virtual {v9}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 482
    .local v1, "source_out":Ljava/io/OutputStream;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 484
    .local v2, "source_in":Ljava/io/InputStream;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Landroid/app/UiAutomationConnection$Repeater;

    invoke-direct {v4, v10, v2, v1}, Landroid/app/UiAutomationConnection$Repeater;-><init>(Landroid/app/UiAutomationConnection;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 485
    .local v3, "writeToProcess":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 486
    .end local v1    # "source_out":Ljava/io/OutputStream;
    .end local v2    # "source_in":Ljava/io/InputStream;
    move-object v12, v3

    goto :goto_1

    .line 487
    .end local v3    # "writeToProcess":Ljava/lang/Thread;
    :cond_1
    const/4 v3, 0x0

    move-object v12, v3

    .line 492
    .local v12, "writeToProcess":Ljava/lang/Thread;
    :goto_1
    if-eqz p4, :cond_2

    .line 493
    invoke-virtual {v9}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 494
    .local v1, "sink_in":Ljava/io/InputStream;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual/range {p4 .. p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 496
    .local v2, "sink_out":Ljava/io/OutputStream;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Landroid/app/UiAutomationConnection$Repeater;

    invoke-direct {v4, v10, v1, v2}, Landroid/app/UiAutomationConnection$Repeater;-><init>(Landroid/app/UiAutomationConnection;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 497
    .local v3, "readStderrFromProcess":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 498
    .end local v1    # "sink_in":Ljava/io/InputStream;
    .end local v2    # "sink_out":Ljava/io/OutputStream;
    move-object v13, v3

    goto :goto_2

    .line 499
    .end local v3    # "readStderrFromProcess":Ljava/lang/Thread;
    :cond_2
    const/4 v3, 0x0

    move-object v13, v3

    .line 502
    .local v13, "readStderrFromProcess":Ljava/lang/Thread;
    :goto_2
    new-instance v14, Ljava/lang/Thread;

    new-instance v15, Landroid/app/UiAutomationConnection$1;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object v3, v12

    move-object v4, v0

    move-object v5, v13

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v9}, Landroid/app/UiAutomationConnection$1;-><init>(Landroid/app/UiAutomationConnection;Ljava/lang/Thread;Ljava/lang/Thread;Ljava/lang/Thread;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Ljava/lang/Process;)V

    invoke-direct {v14, v15}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object v1, v14

    .line 524
    .local v1, "cleanup":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 525
    return-void

    .line 462
    .end local v0    # "readFromProcess":Ljava/lang/Thread;
    .end local v1    # "cleanup":Ljava/lang/Thread;
    .end local v9    # "process":Ljava/lang/Process;
    .end local v12    # "writeToProcess":Ljava/lang/Thread;
    .end local v13    # "readStderrFromProcess":Ljava/lang/Thread;
    :catch_0
    move-exception v0

    .line 463
    .local v0, "exc":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error running shell command \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 457
    .end local v0    # "exc":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public blacklist getAdoptedShellPermissions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 400
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 401
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 402
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 403
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 404
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 405
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 407
    .local v0, "identity":J
    :try_start_1
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v2}, Landroid/app/IActivityManager;->getDelegatedShellPermissions()Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 407
    return-object v2

    .line 409
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 410
    throw v2

    .line 404
    .end local v0    # "identity":J
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public greylist-max-o getWindowAnimationFrameStats()Landroid/view/WindowAnimationFrameStats;
    .locals 3

    .line 319
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 321
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 322
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 323
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 324
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 326
    .local v0, "identity":J
    :try_start_1
    new-instance v2, Landroid/view/WindowAnimationFrameStats;

    invoke-direct {v2}, Landroid/view/WindowAnimationFrameStats;-><init>()V

    .line 327
    .local v2, "stats":Landroid/view/WindowAnimationFrameStats;
    invoke-static {v2}, Landroid/view/SurfaceControl;->getAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    nop

    .line 330
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 328
    return-object v2

    .line 330
    .end local v2    # "stats":Landroid/view/WindowAnimationFrameStats;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 331
    throw v2

    .line 323
    .end local v0    # "identity":J
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public greylist-max-o getWindowContentFrameStats(I)Landroid/view/WindowContentFrameStats;
    .locals 5
    .param p1, "windowId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 285
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 286
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 287
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 288
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 289
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 290
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 292
    .local v1, "identity":J
    :try_start_1
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v3, p1, v0}, Landroid/view/accessibility/IAccessibilityManager;->getWindowToken(II)Landroid/os/IBinder;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    .local v3, "token":Landroid/os/IBinder;
    if-nez v3, :cond_0

    .line 294
    const/4 v4, 0x0

    .line 298
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 294
    return-object v4

    .line 296
    :cond_0
    :try_start_2
    iget-object v4, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v4, v3}, Landroid/view/IWindowManager;->getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 298
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 296
    return-object v4

    .line 298
    .end local v3    # "token":Landroid/os/IBinder;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 299
    throw v3

    .line 288
    .end local v0    # "callingUserId":I
    .end local v1    # "identity":J
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public greylist-max-o grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 337
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 339
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 340
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 341
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 342
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 344
    .local v0, "identity":J
    :try_start_1
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v2, p1, p2, p3}, Landroid/permission/IPermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 347
    nop

    .line 348
    return-void

    .line 346
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 347
    throw v2

    .line 341
    .end local v0    # "identity":J
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist injectInputEvent(Landroid/view/InputEvent;ZZ)Z
    .locals 7
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "sync"    # Z
    .param p3, "waitForAnimations"    # Z

    .line 133
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 135
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 136
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 137
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 141
    instance-of v0, p1, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 142
    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    .line 143
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 144
    .local v3, "syncTransactionsBefore":Z
    :goto_0
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    move v0, v2

    .line 145
    .local v0, "syncTransactionsAfter":Z
    goto :goto_5

    .line 146
    .end local v0    # "syncTransactionsAfter":Z
    .end local v3    # "syncTransactionsBefore":Z
    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 147
    .local v0, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x2002

    .line 148
    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v3, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v2

    .line 149
    .restart local v3    # "syncTransactionsBefore":Z
    :goto_3
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_5

    goto :goto_4

    :cond_5
    move v2, v1

    :goto_4
    move v0, v2

    .line 152
    .local v0, "syncTransactionsAfter":Z
    :goto_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 154
    .local v4, "identity":J
    if-eqz v3, :cond_6

    .line 155
    :try_start_1
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v2, p3}, Landroid/view/IWindowManager;->syncInputTransactions(Z)V

    .line 158
    :cond_6
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    .line 159
    if-eqz p2, :cond_7

    const/4 v6, 0x2

    goto :goto_6

    .line 160
    :cond_7
    move v6, v1

    .line 158
    :goto_6
    invoke-virtual {v2, p1, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v2

    .line 162
    .local v2, "result":Z
    if-eqz v0, :cond_8

    .line 163
    iget-object v6, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v6, p3}, Landroid/view/IWindowManager;->syncInputTransactions(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :cond_8
    nop

    .line 169
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 165
    return v2

    .line 169
    .end local v2    # "result":Z
    :catchall_0
    move-exception v1

    goto :goto_7

    .line 166
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 170
    nop

    .line 171
    return v1

    .line 169
    :goto_7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 170
    throw v1

    .line 137
    .end local v0    # "syncTransactionsAfter":Z
    .end local v3    # "syncTransactionsBefore":Z
    .end local v4    # "identity":J
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public greylist-max-o revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 353
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 355
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 356
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 357
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 358
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 360
    .local v0, "identity":J
    :try_start_1
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mPermissionManager:Landroid/permission/IPermissionManager;

    const/4 v3, 0x0

    invoke-interface {v2, p1, p2, p3, v3}, Landroid/permission/IPermissionManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 363
    nop

    .line 364
    return-void

    .line 362
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 363
    throw v2

    .line 357
    .end local v0    # "identity":J
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public greylist-max-o setRotation(I)Z
    .locals 3
    .param p1, "rotation"    # I

    .line 190
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 192
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 193
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 194
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 195
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 197
    .local v0, "identity":J
    const/4 v2, -0x2

    if-ne p1, v2, :cond_0

    .line 198
    :try_start_1
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v2}, Landroid/view/IWindowManager;->thawRotation()V

    goto :goto_0

    .line 200
    :cond_0
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    :goto_0
    const/4 v2, 0x1

    .line 206
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 202
    return v2

    .line 206
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 207
    throw v2

    .line 203
    :catch_0
    move-exception v2

    .line 206
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 207
    nop

    .line 208
    const/4 v2, 0x0

    return v2

    .line 194
    .end local v0    # "identity":J
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public greylist-max-o shutdown()V
    .locals 2

    .line 529
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 530
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->isConnectedLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 533
    :cond_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 534
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/UiAutomationConnection;->mIsShutdown:Z

    .line 535
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->isConnectedLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 536
    invoke-virtual {p0}, Landroid/app/UiAutomationConnection;->disconnect()V

    .line 538
    :cond_1
    monitor-exit v0

    .line 539
    return-void

    .line 538
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist syncInputTransactions(Z)V
    .locals 2
    .param p1, "waitForAnimations"    # Z

    .line 176
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 178
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 179
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 180
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :try_start_1
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->syncInputTransactions(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 186
    :goto_0
    return-void

    .line 180
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist takeScreenshot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "crop"    # Landroid/graphics/Rect;

    .line 213
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 215
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 216
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 217
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 218
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 220
    .local v0, "identity":J
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 221
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 222
    .local v3, "height":I
    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v4

    .line 223
    .local v4, "displayToken":Landroid/os/IBinder;
    new-instance v5, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    invoke-direct {v5, v4}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;-><init>(Landroid/os/IBinder;)V

    .line 225
    invoke-virtual {v5, p1}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v5

    check-cast v5, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    .line 226
    invoke-virtual {v5, v2, v3}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setSize(II)Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    move-result-object v5

    .line 227
    invoke-virtual {v5}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->build()Landroid/view/SurfaceControl$DisplayCaptureArgs;

    move-result-object v5

    .line 228
    .local v5, "captureArgs":Landroid/view/SurfaceControl$DisplayCaptureArgs;
    nop

    .line 229
    invoke-static {v5}, Landroid/view/SurfaceControl;->captureDisplay(Landroid/view/SurfaceControl$DisplayCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v6

    .line 230
    .local v6, "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    if-nez v6, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 230
    return-object v7

    .line 232
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "displayToken":Landroid/os/IBinder;
    .end local v5    # "captureArgs":Landroid/view/SurfaceControl$DisplayCaptureArgs;
    .end local v6    # "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 233
    throw v2

    .line 217
    .end local v0    # "identity":J
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist takeSurfaceControlScreenshot(Landroid/view/SurfaceControl;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 239
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 241
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 242
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 243
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 246
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 248
    .local v0, "identity":J
    :try_start_1
    new-instance v2, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    invoke-direct {v2, p1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    const/4 v3, 0x0

    .line 250
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setChildrenOnly(Z)Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    move-result-object v2

    .line 251
    invoke-virtual {v2}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->build()Landroid/view/SurfaceControl$LayerCaptureArgs;

    move-result-object v2

    .line 248
    invoke-static {v2}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl$LayerCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    .local v2, "captureBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 254
    nop

    .line 256
    if-nez v2, :cond_0

    .line 257
    const/4 v3, 0x0

    return-object v3

    .line 259
    :cond_0
    invoke-virtual {v2}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    .line 253
    .end local v2    # "captureBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 254
    throw v2

    .line 243
    .end local v0    # "identity":J
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
