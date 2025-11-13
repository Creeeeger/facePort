.class public final Landroid/service/autofill/augmented/FillWindow;
.super Ljava/lang/Object;
.source "FillWindow.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mBounds:Landroid/graphics/Rect;

.field private final blacklist mCloseGuard:Ldalvik/system/CloseGuard;

.field private blacklist mDestroyed:Z

.field private blacklist mFillView:Landroid/view/View;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

.field private blacklist mShowing:Z

.field private final blacklist mUiThreadHandler:Landroid/os/Handler;

.field private blacklist mUpdateCalled:Z

.field private blacklist mWm:Landroid/view/WindowManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$f-UR09CUQw8w5qLsf8GZ9Mr4C8k(Landroid/service/autofill/augmented/FillWindow;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/autofill/augmented/FillWindow;->lambda$update$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUiThreadHandler(Landroid/service/autofill/augmented/FillWindow;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/augmented/FillWindow;->mUiThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleHide(Landroid/service/autofill/augmented/FillWindow;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/autofill/augmented/FillWindow;->handleHide()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleShow(Landroid/service/autofill/augmented/FillWindow;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/autofill/augmented/FillWindow;->handleShow(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/service/autofill/augmented/FillWindow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mLock:Ljava/lang/Object;

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mUiThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method private blacklist checkNotDestroyedLocked()V
    .locals 2

    iget-boolean v0, p0, Landroid/service/autofill/augmented/FillWindow;->mDestroyed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already destroyed()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist handleHide()V
    .locals 4

    sget-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    const-string v1, "handleHide()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mWm:Landroid/view/WindowManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/service/autofill/augmented/FillWindow;->mShowing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/service/autofill/augmented/FillWindow;->mShowing:Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    sget-boolean v2, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v2, :cond_1

    sget-object v2, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    const-string v3, "Exception hiding window."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private blacklist handleShow(Landroid/view/WindowManager$LayoutParams;)V
    .locals 5

    sget-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    const-string v1, "handleShow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mWm:Landroid/view/WindowManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    :try_start_1
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-boolean v1, p0, Landroid/service/autofill/augmented/FillWindow;->mShowing:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;

    invoke-interface {v1, v2, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/autofill/augmented/FillWindow;->mShowing:Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;

    invoke-interface {v1, v2, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    sget-boolean v2, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v2, :cond_3

    sget-object v2, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    const-string v3, "Exception showing window."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v1

    sget-boolean v2, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v2, :cond_2

    sget-object v2, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Filed with token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " gone."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    nop

    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private blacklist hide()V
    .locals 4

    sget-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    const-string v1, "hide()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/service/autofill/augmented/FillWindow;->checkNotDestroyedLocked()V

    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mWm:Landroid/view/WindowManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/service/autofill/augmented/FillWindow;->mShowing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    invoke-virtual {v1}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->requestHideFillUi()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v2, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    const-string v3, "Error requesting to hide fill window"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "update() not called yet, or already destroyed()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private synthetic blacklist lambda$update$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    sget-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sVerbose:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    const-string v1, "Outside touch detected, hiding the window"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Landroid/service/autofill/augmented/FillWindow;->hide()V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 0

    invoke-virtual {p0}, Landroid/service/autofill/augmented/FillWindow;->destroy()V

    return-void
.end method

.method public whitelist destroy()V
    .locals 3

    sget-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy(): mDestroyed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/autofill/augmented/FillWindow;->mDestroyed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mShowing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/autofill/augmented/FillWindow;->mShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFillView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/service/autofill/augmented/FillWindow;->mDestroyed:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-boolean v1, p0, Landroid/service/autofill/augmented/FillWindow;->mUpdateCalled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Landroid/service/autofill/augmented/FillWindow;->hide()V

    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->logEvent(I)V

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/autofill/augmented/FillWindow;->mDestroyed:Z

    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "destroyed: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/autofill/augmented/FillWindow;->mDestroyed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "updateCalled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/autofill/augmented/FillWindow;->mUpdateCalled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "fill window: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/autofill/augmented/FillWindow;->mShowing:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "shown"

    goto :goto_0

    :cond_0
    const-string v0, "hidden"

    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "fill view: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mBounds: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWm: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mWm:Landroid/view/WindowManager;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    invoke-virtual {p0}, Landroid/service/autofill/augmented/FillWindow;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method blacklist show()V
    .locals 6

    sget-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/service/autofill/augmented/FillWindow;->checkNotDestroyedLocked()V

    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mWm:Landroid/view/WindowManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    iget-object v2, p0, Landroid/service/autofill/augmented/FillWindow;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/service/autofill/augmented/FillWindow;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/service/autofill/augmented/FillWindow;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/service/autofill/augmented/FillWindow;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    new-instance v4, Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter;

    invoke-direct {v4, p0}, Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter;-><init>(Landroid/service/autofill/augmented/FillWindow;)V

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->requestShowFillUi(IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v2, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    const-string v3, "Error requesting to show fill window"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->logEvent(I)V

    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "update() not called yet, or already destroyed()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist update(Landroid/service/autofill/augmented/PresentationParams$Area;Landroid/view/View;J)Z
    .locals 7

    sget-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " + with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroid/service/autofill/augmented/PresentationParams$Area;->proxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroid/service/autofill/augmented/PresentationParams$Area;->proxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    invoke-virtual {v0}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->getSmartSuggestionParams()Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-object v2, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    const-string v3, "No SmartSuggestionParams"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/service/autofill/augmented/PresentationParams$Area;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v3, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    const-string v4, "No Rect on SmartSuggestionParams"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget-object v3, p0, Landroid/service/autofill/augmented/FillWindow;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0}, Landroid/service/autofill/augmented/FillWindow;->checkNotDestroyedLocked()V

    iget-object v4, p1, Landroid/service/autofill/augmented/PresentationParams$Area;->proxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    iput-object v4, p0, Landroid/service/autofill/augmented/FillWindow;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Landroid/view/WindowManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Landroid/service/autofill/augmented/FillWindow;->mWm:Landroid/view/WindowManager;

    iput-object p2, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;

    iget-object v4, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;

    new-instance v5, Landroid/service/autofill/augmented/FillWindow$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Landroid/service/autofill/augmented/FillWindow$$ExternalSyntheticLambda0;-><init>(Landroid/service/autofill/augmented/FillWindow;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-boolean v1, p0, Landroid/service/autofill/augmented/FillWindow;->mShowing:Z

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/service/autofill/augmented/PresentationParams$Area;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v4, p0, Landroid/service/autofill/augmented/FillWindow;->mBounds:Landroid/graphics/Rect;

    sget-boolean v4, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v4, :cond_3

    sget-object v4, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Created FillWindow: params= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " view="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/service/autofill/augmented/FillWindow;->mUpdateCalled:Z

    iput-boolean v1, p0, Landroid/service/autofill/augmented/FillWindow;->mDestroyed:Z

    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    invoke-virtual {v1, p0}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->setFillWindow(Landroid/service/autofill/augmented/FillWindow;)V

    monitor-exit v3

    return v4

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
