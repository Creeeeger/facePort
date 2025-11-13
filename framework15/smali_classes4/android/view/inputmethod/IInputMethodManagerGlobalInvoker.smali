.class final Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;
.super Ljava/lang/Object;
.source "IInputMethodManagerGlobalInvoker.java"


# static fields
.field private static final blacklist TIMEOUT_MS:J = 0x2710L

.field private static blacklist sCurStartInputSeq:I

.field private static volatile blacklist sServiceCache:Lcom/android/internal/view/IInputMethodManager;

.field private static volatile blacklist sTrackerServiceCache:Lcom/android/internal/inputmethod/IImeTracker;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sServiceCache:Lcom/android/internal/view/IInputMethodManager;

    sput-object v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sTrackerServiceCache:Lcom/android/internal/inputmethod/IImeTracker;

    const/4 v0, 0x0

    sput v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sCurStartInputSeq:I

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 7

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v6

    if-nez v6, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/view/IInputMethodManager;->acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static blacklist acceptStylusHandwritingDelegationAsync(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)Z
    .locals 8

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v7

    if-nez v7, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/view/IInputMethodManager;->acceptStylusHandwritingDelegationAsync(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static blacklist addClient(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->addClient(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist addVirtualStylusIdForTestSession(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->addVirtualStylusIdForTestSession(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private static blacklist advanceAngGetStartInputSequenceNumber()I
    .locals 1

    sget v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sCurStartInputSeq:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sCurStartInputSeq:I

    return v0
.end method

.method static blacklist dismissAndShowAgainInputMethodPicker()V
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->dismissAndShowAgainInputMethodPicker()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist finishTrackingPendingImeVisibilityRequests()V
    .locals 5

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/internal/inputmethod/IImeTracker;->finishTrackingPendingImeVisibilityRequests(Lcom/android/internal/infra/AndroidFuture;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/internal/infra/AndroidFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist getCurTokenDisplayId()I
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->getCurTokenDisplayId()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist getCurrentFocusDisplayID()I
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->getCurrentFocusDisplayID()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist getCurrentInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->getCurrentInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist getDexSettingsValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/IInputMethodManager;->getDexSettingsValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist getEnabledInputMethodList(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/view/inputmethod/Flags;->useInputMethodInfoSafeList()Z

    move-result v1

    if-eqz v1, :cond_1

    nop

    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodList(I)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->extractFrom(Lcom/android/internal/inputmethod/InputMethodInfoSafeList;)Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodListLegacy(I)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private static blacklist getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;
    .locals 4

    sget-object v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sTrackerServiceCache:Lcom/android/internal/inputmethod/IImeTracker;

    if-nez v0, :cond_2

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v3

    move-object v0, v3

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    sput-object v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sTrackerServiceCache:Lcom/android/internal/inputmethod/IImeTracker;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_2
    :goto_0
    return-object v0
.end method

.method static blacklist getInputMethodList(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/view/inputmethod/Flags;->useInputMethodInfoSafeList()Z

    move-result v1

    if-eqz v1, :cond_1

    nop

    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodList(II)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->extractFrom(Lcom/android/internal/inputmethod/InputMethodInfoSafeList;)Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodListLegacy(II)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist getInputMethodWindowVisibleHeight(Lcom/android/internal/inputmethod/IInputMethodClient;)I
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodWindowVisibleHeight(Lcom/android/internal/inputmethod/IInputMethodClient;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist getLastInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->getLastInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist getService()Lcom/android/internal/view/IInputMethodManager;
    .locals 3

    sget-object v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sServiceCache:Lcom/android/internal/view/IInputMethodManager;

    if-nez v0, :cond_2

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->isInEditModeInternal()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    nop

    const-string v1, "input_method"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    sput-object v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sServiceCache:Lcom/android/internal/view/IInputMethodManager;

    :cond_2
    return-object v0
.end method

.method static blacklist getWACOMPen()Z
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->getWACOMPen()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private static blacklist handleRemoteExceptionOrRethrow(Landroid/os/RemoteException;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteException;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/RemoteException;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method static blacklist handleVoiceHWKey()V
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->handleVoiceHWKey()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist hasPendingImeVisibilityRequests()Z
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/inputmethod/IImeTracker;->hasPendingImeVisibilityRequests()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Z
    .locals 9

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v8

    if-nez v8, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    :try_start_0
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static blacklist hideSoftInputFromServerForTest()V
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInputFromServerForTest()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist isAccessoryKeyboard()I
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->isAccessoryKeyboard()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist isAvailable()Z
    .locals 1

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static blacklist isCurrentInputMethodAsSamsungKeyboard()Z
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->isCurrentInputMethodAsSamsungKeyboard()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist isImeTraceEnabled()Z
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->isImeTraceEnabled()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist isInputMethodPickerShownForTest()Z
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->isInputMethodPickerShownForTest()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist isInputMethodShown()Z
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->isInputMethodShown()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist isStylusHandwritingAvailableAsUser(IZ)Z
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/IInputMethodManager;->isStylusHandwritingAvailableAsUser(IZ)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist minimizeSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;I)Z
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/IInputMethodManager;->minimizeSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/android/internal/inputmethod/IImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist onDispatched(Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/android/internal/inputmethod/IImeTracker;->onDispatched(Landroid/view/inputmethod/ImeTracker$Token;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/android/internal/inputmethod/IImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist onHidden(Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/android/internal/inputmethod/IImeTracker;->onHidden(Landroid/view/inputmethod/ImeTracker$Token;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist onProgress(Landroid/os/IBinder;I)V
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/android/internal/inputmethod/IImeTracker;->onProgress(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist onShown(Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/android/internal/inputmethod/IImeTracker;->onShown(Landroid/view/inputmethod/ImeTracker$Token;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist onStart(Ljava/lang/String;IIIIZ)Landroid/view/inputmethod/ImeTracker$Token;
    .locals 8

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v7

    if-nez v7, :cond_0

    invoke-static {p0}, Landroid/view/inputmethod/ImeTracker$Token;->empty(Ljava/lang/String;)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/inputmethod/IImeTracker;->onStart(Ljava/lang/String;IIIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static blacklist prepareStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->prepareStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist removeImeSurface(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/RemoteException;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->removeImeSurface()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1, p0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->handleRemoteExceptionOrRethrow(Landroid/os/RemoteException;Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method static blacklist removeImeSurfaceFromWindowAsync(Landroid/os/IBinder;)V
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->removeImeSurfaceFromWindowAsync(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist reportPerceptibleAsync(Landroid/os/IBinder;Z)V
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/IInputMethodManager;->reportPerceptibleAsync(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;I)V
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[II)V
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist setInputMethodSwitchDisable(Lcom/android/internal/inputmethod/IInputMethodClient;Z)V
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/IInputMethodManager;->setInputMethodSwitchDisable(Lcom/android/internal/inputmethod/IInputMethodClient;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist setStylusWindowIdleTimeoutForTest(Lcom/android/internal/inputmethod/IInputMethodClient;J)V
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->setStylusWindowIdleTimeoutForTest(Lcom/android/internal/inputmethod/IInputMethodClient;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist showInputMethodPickerFromClient(Lcom/android/internal/inputmethod/IInputMethodClient;I)V
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/IInputMethodManager;->showInputMethodPickerFromClient(Lcom/android/internal/inputmethod/IInputMethodClient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist showInputMethodPickerFromSystem(II)V
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/IInputMethodManager;->showInputMethodPickerFromSystem(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist showSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)Z
    .locals 11

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v10

    if-nez v10, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    :try_start_0
    invoke-interface/range {v1 .. v9}, Lcom/android/internal/view/IInputMethodManager;->showSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static blacklist startConnectionlessStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)Z
    .locals 8

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v7

    if-nez v7, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/view/IInputMethodManager;->startConnectionlessStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static blacklist startImeTrace(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/RemoteException;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->startImeTrace()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1, p0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->handleRemoteExceptionOrRethrow(Landroid/os/RemoteException;Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method static blacklist startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;
    .locals 15

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v14

    if-nez v14, :cond_0

    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NULL:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v0

    :cond_0
    move-object v1, v14

    move v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    :try_start_0
    invoke-interface/range {v1 .. v13}, Lcom/android/internal/view/IInputMethodManager;->startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static blacklist startInputOrWindowGainedFocusAsync(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;Z)I
    .locals 17

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v16

    if-nez v16, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    nop

    :try_start_0
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->advanceAngGetStartInputSequenceNumber()I

    move-result v14

    move-object/from16 v1, v16

    move/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v15, p12

    invoke-interface/range {v1 .. v15}, Lcom/android/internal/view/IInputMethodManager;->startInputOrWindowGainedFocusAsync(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    sget v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sCurStartInputSeq:I

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static blacklist startProtoDump([BILjava/lang/String;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/RemoteException;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->startProtoDump([BILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1, p3}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->handleRemoteExceptionOrRethrow(Landroid/os/RemoteException;Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method static blacklist startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist stopImeTrace(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/RemoteException;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->stopImeTrace()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1, p0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->handleRemoteExceptionOrRethrow(Landroid/os/RemoteException;Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method static blacklist undoMinimizeSoftInput()V
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->undoMinimizeSoftInput()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
