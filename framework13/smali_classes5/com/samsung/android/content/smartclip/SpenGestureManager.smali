.class public Lcom/samsung/android/content/smartclip/SpenGestureManager;
.super Ljava/lang/Object;
.source "SpenGestureManager.java"


# static fields
.field private static blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mService:Lcom/samsung/android/content/smartclip/ISpenGestureService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 43
    const-string v0, "SpenGestureManager"

    sput-object v0, Lcom/samsung/android/content/smartclip/SpenGestureManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SpenGestureManager;->mContext:Landroid/content/Context;

    .line 46
    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/content/smartclip/ISpenGestureService;

    .line 49
    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SpenGestureManager;->mContext:Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    .line 51
    return-void
.end method

.method private declared-synchronized blacklist getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;
    .locals 2

    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/content/smartclip/ISpenGestureService;

    if-nez v0, :cond_0

    .line 64
    const-string/jumbo v0, "spengestureservice"

    .line 65
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 64
    invoke-static {v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/content/smartclip/ISpenGestureService;

    .line 66
    if-nez v0, :cond_0

    .line 67
    const-string v0, "SpenGestureManager"

    const-string/jumbo v1, "warning: no SpenGestureManager"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .end local p0    # "this":Lcom/samsung/android/content/smartclip/SpenGestureManager;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public blacklist getBleSpenAddress()Ljava/lang/String;
    .locals 2

    .line 260
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 261
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_0

    .line 262
    invoke-interface {v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->getBleSpenAddress()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 267
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_0
    nop

    .line 268
    const/4 v0, 0x0

    return-object v0

    .line 264
    :catch_0
    move-exception v0

    .line 266
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getBleSpenCmfCode()Ljava/lang/String;
    .locals 2

    .line 285
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 286
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_0

    .line 287
    invoke-interface {v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->getBleSpenCmfCode()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 292
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_0
    nop

    .line 293
    const/4 v0, 0x0

    return-object v0

    .line 289
    :catch_0
    move-exception v0

    .line 291
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 5

    .line 457
    const/4 v0, 0x0

    .line 458
    .local v0, "inputContext":Lcom/android/internal/view/IInputContext;
    const/4 v1, 0x0

    .line 460
    .local v1, "missingMethodFlags":I
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v2

    .line 461
    .local v2, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v2, :cond_0

    .line 462
    invoke-interface {v2}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->getCurrentInputContext()Lcom/android/internal/view/IInputContext;

    move-result-object v3

    move-object v0, v3

    .line 463
    invoke-interface {v2}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->getCurrentMissingMethodFlags()I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 468
    .end local v2    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_0
    nop

    .line 470
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 471
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 472
    .local v3, "unbindIssued":Ljava/util/concurrent/atomic/AtomicBoolean;
    return-object v2

    .line 477
    .end local v3    # "unbindIssued":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_1
    return-object v2

    .line 465
    :catch_0
    move-exception v2

    .line 467
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public blacklist getEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .locals 3

    .line 481
    const/4 v0, 0x0

    .line 483
    .local v0, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v1

    .line 484
    .local v1, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v1, :cond_0

    .line 485
    invoke-interface {v1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->getCurrentEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 490
    .end local v1    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_0
    nop

    .line 491
    return-object v0

    .line 487
    :catch_0
    move-exception v1

    .line 489
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public blacklist getScreenOffReason()I
    .locals 2

    .line 395
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 396
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_0

    .line 397
    invoke-interface {v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->getScreenOffReason()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 402
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_0
    nop

    .line 403
    const/4 v0, -0x1

    return v0

    .line 399
    :catch_0
    move-exception v0

    .line 401
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getScrollableAreaInfo(Landroid/graphics/Rect;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "skipWindowToken"    # Landroid/os/IBinder;

    .line 122
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 123
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->getScrollableAreaInfo(Landroid/graphics/Rect;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 129
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_0
    nop

    .line 130
    const/4 v0, 0x0

    return-object v0

    .line 126
    :catch_0
    move-exception v0

    .line 128
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getScrollableViewInfo(Landroid/graphics/Rect;ILandroid/os/IBinder;)Landroid/os/Bundle;
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "viewHash"    # I
    .param p3, "skipWindowToken"    # Landroid/os/IBinder;

    .line 135
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 136
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->getScrollableViewInfo(Landroid/graphics/Rect;ILandroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 142
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_0
    nop

    .line 143
    const/4 v0, 0x0

    return-object v0

    .line 139
    :catch_0
    move-exception v0

    .line 141
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "skipWindowToken"    # Landroid/os/IBinder;
    .param p3, "extractionMode"    # I

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;II)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;II)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "skipWindowToken"    # Landroid/os/IBinder;
    .param p3, "extractionMode"    # I
    .param p4, "windowTargetingType"    # I

    .line 109
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 110
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_0

    .line 111
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;II)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 116
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_0
    nop

    .line 117
    const/4 v0, 0x0

    return-object v0

    .line 113
    :catch_0
    move-exception v0

    .line 115
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist injectInputEvent(IILjava/util/ArrayList;ZLandroid/os/IBinder;)V
    .locals 7
    .param p1, "targetX"    # I
    .param p2, "targetY"    # I
    .param p4, "waitUntilConsume"    # Z
    .param p5, "skipWindowToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Landroid/view/InputEvent;",
            ">;Z",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .line 148
    .local p3, "inputEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/InputEvent;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 149
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/InputEvent;

    .line 151
    .local v1, "array":[Landroid/view/InputEvent;
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, [Landroid/view/InputEvent;

    .line 152
    .end local v1    # "array":[Landroid/view/InputEvent;
    .local v4, "array":[Landroid/view/InputEvent;
    move-object v1, v0

    move v2, p1

    move v3, p2

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->injectInputEvent(II[Landroid/view/InputEvent;ZLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    .end local v4    # "array":[Landroid/view/InputEvent;
    :cond_0
    nop

    .line 158
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 156
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public declared-synchronized blacklist isServiceAvailable()Z
    .locals 3

    monitor-enter p0

    .line 54
    :try_start_0
    const-string/jumbo v0, "spengestureservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 55
    .local v0, "service":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-nez v0, :cond_0

    .line 56
    sget-object v1, Lcom/samsung/android/content/smartclip/SpenGestureManager;->TAG:Ljava/lang/String;

    const-string v2, "isServiceAvailable : Service not available"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 59
    .end local p0    # "this":Lcom/samsung/android/content/smartclip/SpenGestureManager;
    :cond_0
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 53
    .end local v0    # "service":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist isSpenInserted()Z
    .locals 2

    .line 247
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 248
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_0

    .line 249
    invoke-interface {v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->isSpenInserted()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 254
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_0
    nop

    .line 255
    const/4 v0, 0x0

    return v0

    .line 251
    :catch_0
    move-exception v0

    .line 253
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist isSupportBleSpen()Z
    .locals 2

    .line 310
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 311
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_0

    .line 312
    invoke-interface {v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->isSupportBleSpen()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 317
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_0
    nop

    .line 318
    const/4 v0, 0x0

    return v0

    .line 314
    :catch_0
    move-exception v0

    .line 316
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist notifyAirGesture(Ljava/lang/String;)V
    .locals 2
    .param p1, "gesture"    # Ljava/lang/String;

    .line 533
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 534
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_0

    .line 535
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->notifyAirGesture(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_0
    nop

    .line 542
    return-void

    .line 537
    :catch_0
    move-exception v0

    .line 539
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist notifyBleSpenChargeLockState(Z)V
    .locals 2
    .param p1, "isLocked"    # Z

    .line 359
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 360
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_0

    .line 361
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->notifyBleSpenChargeLockState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_0
    nop

    .line 367
    return-void

    .line 363
    :catch_0
    move-exception v0

    .line 365
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist notifyKeyboardClosed()V
    .locals 2

    .line 496
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 497
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_0

    .line 498
    invoke-interface {v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->notifyKeyboardClosed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_0
    nop

    .line 505
    return-void

    .line 500
    :catch_0
    move-exception v0

    .line 502
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist registerAirGestureListener(Lcom/samsung/android/content/smartclip/IAirGestureListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/content/smartclip/IAirGestureListener;

    .line 509
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 510
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_0

    .line 511
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->registerAirGestureListener(Lcom/samsung/android/content/smartclip/IAirGestureListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_0
    nop

    .line 517
    return-void

    .line 513
    :catch_0
    move-exception v0

    .line 515
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist registerBleSpenChargeLockStateChangedListener(Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;

    .line 371
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 372
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_0

    .line 373
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->registerBleSpenChargeLockStateChangedListener(Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_0
    nop

    .line 379
    return-void

    .line 375
    :catch_0
    move-exception v0

    .line 377
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist registerHoverListener(Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;

    .line 187
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 188
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_0

    .line 189
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->registerHoverListener(Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_0
    nop

    .line 195
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 193
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist registerInputMethodInfoChangeListener(Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;

    .line 434
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 435
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_0

    .line 436
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->registerInputMethodInfoChangeListener(Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_0
    nop

    .line 442
    return-void

    .line 438
    :catch_0
    move-exception v0

    .line 440
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist resetPenAttachSound(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 604
    if-nez p1, :cond_0

    .line 605
    return-void

    .line 609
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 610
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_1

    .line 611
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->resetPenAttachSound(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_1
    nop

    .line 616
    return-void

    .line 613
    :catch_0
    move-exception v0

    .line 614
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist resetPenDetachSound(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 634
    if-nez p1, :cond_0

    .line 635
    return-void

    .line 639
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 640
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_1

    .line 641
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->resetPenDetachSound(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_1
    nop

    .line 646
    return-void

    .line 643
    :catch_0
    move-exception v0

    .line 644
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist resetPenHoverIcon(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 574
    if-nez p1, :cond_0

    .line 575
    return-void

    .line 579
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 580
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_1

    .line 581
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->resetPenHoverIcon(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_1
    nop

    .line 586
    return-void

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist saveBleSpenLogFile([B)V
    .locals 2
    .param p1, "buffer"    # [B

    .line 347
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 348
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_0

    .line 349
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->saveBleSpenLogFile([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_0
    nop

    .line 355
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 353
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist screenshot(IIZLandroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "displayId"    # I
    .param p2, "targetWindowType"    # I
    .param p3, "containsTargetSystemWindow"    # Z
    .param p4, "sourceCrop"    # Landroid/graphics/Rect;
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "useIdentityTransform"    # Z

    .line 547
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 548
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_0

    .line 549
    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->screenshot(IIZLandroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 554
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_0
    nop

    .line 555
    const/4 v0, 0x0

    return-object v0

    .line 551
    :catch_0
    move-exception v0

    .line 553
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist sendSmartClipRemoteRequestResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;)V
    .locals 2
    .param p1, "result"    # Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    .line 75
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 76
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->sendSmartClipRemoteRequestResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_0
    nop

    .line 83
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 81
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setBleSpenAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .line 273
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 274
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_0

    .line 275
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->setBleSpenAddress(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_0
    nop

    .line 281
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 279
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setBleSpenCmfCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "cmfCode"    # Ljava/lang/String;

    .line 298
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 299
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_0

    .line 300
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->setBleSpenCmfCode(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_0
    nop

    .line 306
    return-void

    .line 302
    :catch_0
    move-exception v0

    .line 304
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setCurrentInputInfo(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)V
    .locals 2
    .param p1, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p2, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p3, "missingMethodFlags"    # I

    .line 421
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 422
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_0

    .line 423
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->setCurrentInputInfo(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_0
    nop

    .line 430
    return-void

    .line 425
    :catch_0
    move-exception v0

    .line 427
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setHoverStayDetectEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 163
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 164
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_0

    .line 165
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->setHoverStayDetectEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_0
    nop

    .line 171
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 169
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setHoverStayValues(III)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "hoverTime"    # I

    .line 175
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 176
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_0

    .line 177
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->setHoverStayValues(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_0
    nop

    .line 183
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 181
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setPenAttachSound(Landroid/content/Context;Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .line 589
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 594
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 595
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_1

    .line 596
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->setPenAttachSound(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_1
    nop

    .line 601
    return-void

    .line 598
    :catch_0
    move-exception v0

    .line 599
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 590
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist setPenDetachSound(Landroid/content/Context;Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .line 619
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 624
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 625
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_1

    .line 626
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->setPenDetachSound(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_1
    nop

    .line 631
    return-void

    .line 628
    :catch_0
    move-exception v0

    .line 629
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 620
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist setPenHoverIcon(Landroid/content/Context;Ljava/io/FileDescriptor;FF)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "hotspotX"    # F
    .param p4, "hotspotY"    # F

    .line 559
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 564
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 565
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_1

    .line 566
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->setPenHoverIcon(Ljava/lang/String;Ljava/io/FileDescriptor;FF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_1
    nop

    .line 571
    return-void

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 560
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist setScreenOffReason(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 408
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 409
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_0

    .line 410
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->setScreenOffReason(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_0
    nop

    .line 416
    return-void

    .line 412
    :catch_0
    move-exception v0

    .line 414
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setSpenInsertionState(Z)V
    .locals 2
    .param p1, "isInserted"    # Z

    .line 235
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 236
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_0

    .line 237
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->setSpenInsertionState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_0
    nop

    .line 243
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 241
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setSpenPdctLowSensitivityEnable()V
    .locals 2

    .line 335
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 336
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_0

    .line 337
    invoke-interface {v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->setSpenPdctLowSensitivityEnable()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_0
    nop

    .line 343
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 341
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setSpenPowerSavingModeEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 211
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 212
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_0

    .line 213
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->setSpenPowerSavingModeEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_0
    nop

    .line 219
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 217
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist showTouchPointer(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .line 223
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 224
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_0

    .line 225
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->showTouchPointer(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_0
    nop

    .line 231
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 229
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist unregisterAirGestureListener(Lcom/samsung/android/content/smartclip/IAirGestureListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/content/smartclip/IAirGestureListener;

    .line 521
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 522
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_0

    .line 523
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->unregisterAirGestureListener(Lcom/samsung/android/content/smartclip/IAirGestureListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_0
    nop

    .line 529
    return-void

    .line 525
    :catch_0
    move-exception v0

    .line 527
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist unregisterBleSpenChargeLockStateChangedListener(Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;

    .line 383
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 384
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_0

    .line 385
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->unregisterBleSpenChargeLockStateChangedListener(Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_0
    nop

    .line 391
    return-void

    .line 387
    :catch_0
    move-exception v0

    .line 389
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist unregisterHoverListener(Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;

    .line 199
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 200
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->unregisterHoverListener(Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_0
    nop

    .line 207
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 205
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist unregisterInputMethodInfoChangeListener(Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;

    .line 446
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 447
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_0

    .line 448
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->unregisterInputMethodInfoChangeListener(Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_0
    nop

    .line 454
    return-void

    .line 450
    :catch_0
    move-exception v0

    .line 452
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist writeBleSpenCommand(Ljava/lang/String;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;

    .line 323
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    .line 324
    .local v0, "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    if-eqz v0, :cond_0

    .line 325
    invoke-interface {v0, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->writeBleSpenCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    .end local v0    # "svc":Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :cond_0
    nop

    .line 331
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 329
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
