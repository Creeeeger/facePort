.class public Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;
.super Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;
.source "AccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IAccessibilityServiceClientWrapper"
.end annotation


# instance fields
.field private final greylist-max-o mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

.field blacklist mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

.field private greylist-max-o mConnectionId:I

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$-HFXTC8zgOUh2cwD2xU2Qq2cfsU(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$onGesture$3(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$0EMg6AlBBLQoSaqaUqG-rcRzW3Y(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$onMagnificationChanged$6(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BK9U4O9uTvtOrxe1k6nU74w4nWg(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Landroid/view/accessibility/AccessibilityEvent;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$onAccessibilityEvent$2(Landroid/view/accessibility/AccessibilityEvent;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$GvgAtE-HWwgNS1AkdgkWZdAIv7k(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$onFingerprintCapturingGesturesChanged$9(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$IXKYfPr3TMC6dAUB0YeaTFDCleg(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;ILandroid/accessibilityservice/IAccessibilityServiceConnection;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$init$0(ILandroid/accessibilityservice/IAccessibilityServiceConnection;Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$K_6Q5INFXIDZBXjGU7XTVWgTeWE(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$createImeSession$14(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$KgBTzj4TFYbJpclN8nrF0pL2YIc(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$onSoftKeyboardShowModeChanged$7(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Kz5FgCsDilOYaIe4pXiCgx79mOQ(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$onFingerprintGesture$10(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$OYlboLvOtZ0y4ApvbWmvlkhnwYE(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;)V
    .locals 0

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$clearAccessibilityCache$4()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$QSF0qKt-KBsI6tip5_48zAGIuRc(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$onAccessibilityButtonClicked$11(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$SwSdAdsZfeBSj5hLIDVbJbt1dh4(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$onAccessibilityButtonAvailabilityChanged$12(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$W53B7rFLAMfQaMfr7hMLJNy99eo(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Landroid/accessibilityservice/AccessibilityInputMethodSession;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$setImeSessionEnabled$15(Landroid/accessibilityservice/AccessibilityInputMethodSession;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$YEsnsFn0WdkVBoBjQF7Ra1MF8TE(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$onTouchStateChanged$18(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_exiZxxmLUR-eiAmxh57ePNu0NE(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$onPerformGestureResult$8(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$i0f-uTvDMLKO2vf_5jjAZRDxmaE(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;)V
    .locals 0

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$onInterrupt$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$n9Hm9TSr4tOpOh7WX4knH2SgaMU(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$onMotionEvent$17(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$r0ACsNPOC_-7NXAK_zzHgcgM7Ko(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;)V
    .locals 0

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$onSystemActionsChanged$13()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vCy_V5kFKdbucHrZ9zm97oID030(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Landroid/view/KeyEvent;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$onKeyEvent$5(Landroid/view/KeyEvent;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ykY7WWeT272q3v5fyI7WHf08f3E(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$startInput$16(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/accessibilityservice/AccessibilityService$Callbacks;)V
    .locals 2

    new-instance v0, Landroid/os/HandlerExecutor;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, v0, p3}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$Callbacks;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$Callbacks;)V
    .locals 1

    invoke-direct {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    iput-object p3, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private synthetic blacklist lambda$clearAccessibilityCache$4()V
    .locals 2

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearCache(I)V

    return-void
.end method

.method private synthetic blacklist lambda$createImeSession$14(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V
    .locals 2

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0, p1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->createImeSession(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$init$0(ILandroid/accessibilityservice/IAccessibilityServiceConnection;Landroid/os/IBinder;)V
    .locals 3

    iput p1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->addConnection(ILandroid/accessibilityservice/IAccessibilityServiceConnection;Z)V

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setAttributionTag(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AccessibilityService"

    const-string v2, "Error while setting attributionTag"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    invoke-interface {v0, v1, p3}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->init(ILandroid/os/IBinder;)V

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onServiceConnected()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearCache(I)V

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->removeConnection(I)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->init(ILandroid/os/IBinder;)V

    :goto_1
    return-void
.end method

.method private synthetic blacklist lambda$onAccessibilityButtonAvailabilityChanged$12(Z)V
    .locals 2

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0, p1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onAccessibilityButtonAvailabilityChanged(Z)V

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$onAccessibilityButtonClicked$11(I)V
    .locals 2

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0, p1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onAccessibilityButtonClicked(I)V

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$onAccessibilityEvent$2(Landroid/view/accessibility/AccessibilityEvent;Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    invoke-virtual {v0, p1, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)V

    if-eqz p2, :cond_0

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0, p1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$onFingerprintCapturingGesturesChanged$9(Z)V
    .locals 2

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0, p1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onFingerprintCapturingGesturesChanged(Z)V

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$onFingerprintGesture$10(I)V
    .locals 2

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0, p1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onFingerprintGesture(I)V

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$onGesture$3(Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    .locals 2

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0, p1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$onInterrupt$1()V
    .locals 2

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onInterrupt()V

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$onKeyEvent$5(Landroid/view/KeyEvent;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v1, p1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0, v1, p2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setOnKeyEventResult(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->recycle()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    nop

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->recycle()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_2
    throw v0
.end method

.method private synthetic blacklist lambda$onMagnificationChanged$6(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .locals 2

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$onMotionEvent$17(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0, p1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPerformGestureResult$8(IZ)V
    .locals 2

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0, p1, p2}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onPerformGestureResult(IZ)V

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$onSoftKeyboardShowModeChanged$7(I)V
    .locals 2

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0, p1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onSoftKeyboardShowModeChanged(I)V

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$onSystemActionsChanged$13()V
    .locals 2

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onSystemActionsChanged()V

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$onTouchStateChanged$18(II)V
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0, p1, p2}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onTouchStateChanged(II)V

    return-void
.end method

.method private synthetic blacklist lambda$setImeSessionEnabled$15(Landroid/accessibilityservice/AccessibilityInputMethodSession;Z)V
    .locals 2

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1, p2}, Landroid/accessibilityservice/AccessibilityInputMethodSession;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$startInput$16(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 2

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-direct {v0, p1, v1}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;-><init>(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Lcom/android/internal/inputmethod/CancellationGroup;)V

    :goto_0
    nop

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {p2, v1}, Landroid/view/inputmethod/EditorInfo;->makeCompatible(I)V

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v1, v0, p2, p3}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->startInput(Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist bindInput()V
    .locals 2

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    if-eqz v0, :cond_0

    const-string v0, "AccessibilityService"

    const-string v1, "bindInput must be paired with unbindInput."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/CancellationGroup;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    return-void
.end method

.method public greylist-max-o clearAccessibilityCache()V
    .locals 2

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda15;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist createImeSession(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V
    .locals 2

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda16;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public greylist-max-o init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p2, p1, p3}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda12;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;ILandroid/accessibilityservice/IAccessibilityServiceConnection;Landroid/os/IBinder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public greylist-max-o onAccessibilityButtonAvailabilityChanged(Z)V
    .locals 2

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda14;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onAccessibilityButtonClicked(I)V
    .locals 2

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public greylist-max-o onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Z)V
    .locals 2

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda8;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Landroid/view/accessibility/AccessibilityEvent;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public greylist-max-o onFingerprintCapturingGesturesChanged(Z)V
    .locals 2

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda9;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public greylist-max-o onFingerprintGesture(I)V
    .locals 2

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda3;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    .locals 2

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda7;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public greylist-max-o onInterrupt()V
    .locals 2

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda10;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public greylist-max-o onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 2

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda5;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Landroid/view/KeyEvent;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .locals 2

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda17;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda6;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Landroid/view/MotionEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public greylist-max-o onPerformGestureResult(IZ)V
    .locals 2

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda4;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public greylist-max-o onSoftKeyboardShowModeChanged(I)V
    .locals 2

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onSystemActionsChanged()V
    .locals 2

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda18;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onTouchStateChanged(II)V
    .locals 2

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist setImeSessionEnabled(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V
    .locals 4

    const-string v0, "AccessibilityService"

    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->getSession()Landroid/accessibilityservice/AccessibilityInputMethodSession;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session is already finished: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0, v1, p2}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda11;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Landroid/accessibilityservice/AccessibilityInputMethodSession;Z)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incoming session not of correct type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public blacklist startInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 2

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    if-nez v0, :cond_0

    const-string v0, "AccessibilityService"

    const-string/jumbo v1, "startInput must be called after bindInput."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/CancellationGroup;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    :cond_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda13;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist unbindInput()V
    .locals 2

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->cancelAll()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    goto :goto_0

    :cond_0
    const-string v0, "AccessibilityService"

    const-string/jumbo v1, "unbindInput must be paired with bindInput."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
