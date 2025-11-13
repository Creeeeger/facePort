.class Landroid/view/ViewRootImpl$W;
.super Landroid/view/IWindow$Stub;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/app/servertransaction/WindowStateTransactionItem$TransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "W"
.end annotation


# instance fields
.field private blacklist mIsFromTransactionItem:Z

.field private final greylist-max-o mViewAncestor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mWindowSession:Landroid/view/IWindowSession;


# direct methods
.method constructor greylist-max-o <init>(Landroid/view/ViewRootImpl;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/IWindow$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    iget-object v0, p1, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iput-object v0, p0, Landroid/view/ViewRootImpl$W;->mWindowSession:Landroid/view/IWindowSession;

    return-void
.end method

.method private static greylist-max-o checkCallingPermission(Ljava/lang/String;)I
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    return v1
.end method

.method static synthetic blacklist lambda$dumpWindow$0(Landroid/os/ParcelFileDescriptor;Landroid/view/ViewRootImpl;)V
    .locals 4

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    const-string v2, ""

    invoke-virtual {p1, v2, v1}, Landroid/view/ViewRootImpl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method


# virtual methods
.method public greylist-max-o closeSystemDialogs(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchCloseSystemDialogs(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public greylist-max-o dispatchAppVisibility(Z)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchAppVisibility(Z)V

    :cond_0
    return-void
.end method

.method public greylist-max-o dispatchDragEvent(Landroid/view/DragEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchDragEvent(Landroid/view/DragEvent;)V

    :cond_0
    return-void
.end method

.method public blacklist dispatchDragEventUpdated(Landroid/view/DragEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchDragEventUpdated(Landroid/view/DragEvent;)V

    :cond_0
    return-void
.end method

.method public greylist-max-o dispatchGetNewSurface()V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->dispatchGetNewSurface()V

    :cond_0
    return-void
.end method

.method public blacklist dispatchLetterboxDirectionChanged(I)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->-$$Nest$mdispatchLetterboxDirectionChanged(Landroid/view/ViewRootImpl;I)V

    :cond_0
    return-void
.end method

.method public blacklist dispatchSPenGestureEvent([Landroid/view/InputEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchSPenGestureEvent([Landroid/view/InputEvent;)V

    return-void
.end method

.method public blacklist dispatchSmartClipRemoteRequest(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchSmartClipRemoteRequest(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V

    :cond_0
    return-void
.end method

.method public greylist-max-o dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 3

    if-eqz p6, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mWindowSession:Landroid/view/IWindowSession;

    invoke-virtual {p0}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowSession;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist dispatchWallpaperOffsets(FFFFFZ)V
    .locals 2

    if-eqz p6, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mWindowSession:Landroid/view/IWindowSession;

    invoke-virtual {p0}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method public greylist-max-o dispatchWindowShown()V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->dispatchWindowShown()V

    :cond_0
    return-void
.end method

.method public blacklist dumpWindow(Landroid/os/ParcelFileDescriptor;)V
    .locals 3

    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v2, Landroid/view/ViewRootImpl$W$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0}, Landroid/view/ViewRootImpl$W$$ExternalSyntheticLambda0;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/view/ViewRootImpl;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public greylist-max-o executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 5

    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    const-string v2, "android.permission.DUMP"

    invoke-static {v2}, Landroid/view/ViewRootImpl$W;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v2, v3

    invoke-static {v1, p1, p2, v2}, Landroid/view/ViewDebug;->dispatchCommand(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_0
    goto :goto_3

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_2
    throw v3

    :cond_1
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Insufficient permissions to invoke executeCommand() from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_3
    return-void
.end method

.method public blacklist hideInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 5

    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    const-string v3, "ViewRootImpl.W#hideInsets"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    :cond_0
    const/16 v1, 0x1d

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p3, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    invoke-static {v0, p1, p2, p3}, Landroid/view/ViewRootImpl;->-$$Nest$mhideInsets(Landroid/view/ViewRootImpl;IZLandroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p3, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :goto_0
    return-void
.end method

.method public blacklist insetsControlChanged(Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V
    .locals 7

    invoke-static {}, Lcom/android/window/flags/Flags;->insetsControlChangedItem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/ViewRootImpl$W;->mIsFromTransactionItem:Z

    iput-boolean v1, p0, Landroid/view/ViewRootImpl$W;->mIsFromTransactionItem:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/InsetsSourceControl$Array;->release()V

    :cond_1
    return-void

    :cond_2
    sget v3, Landroid/view/InsetsSource;->ID_IME:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/view/InsetsState;->isSourceOrDefaultVisible(II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    const-string v5, "ViewRootImpl#dispatchInsetsControlChanged"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v4, v6}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    :cond_3
    if-eqz v0, :cond_4

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v3, v4, :cond_4

    invoke-static {v2, p1, p2}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleInsetsControlChanged(Landroid/view/ViewRootImpl;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V

    return-void

    :cond_4
    const/4 v3, 0x1

    if-nez v0, :cond_5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-ne v4, v5, :cond_5

    move v1, v3

    goto :goto_1

    :cond_5
    nop

    :goto_1
    if-eqz v1, :cond_6

    new-instance v4, Landroid/view/InsetsState;

    invoke-direct {v4, p1, v3}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    move-object p1, v4

    new-instance v4, Landroid/view/InsetsSourceControl$Array;

    invoke-direct {v4, p2, v3}, Landroid/view/InsetsSourceControl$Array;-><init>(Landroid/view/InsetsSourceControl$Array;Z)V

    move-object p2, v4

    :cond_6
    invoke-static {v2, p1, p2}, Landroid/view/ViewRootImpl;->-$$Nest$mdispatchInsetsControlChanged(Landroid/view/ViewRootImpl;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V

    return-void
.end method

.method public blacklist invalidateForScreenShot(Z)V
    .locals 4

    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "ViewRootImpl"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalidateForScreenShot forceMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->-$$Nest$fputmForceModeInScreenshot(Landroid/view/ViewRootImpl;Z)V

    if-eqz p1, :cond_1

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ThreadedRenderer;->setColorMode(I)F

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ThreadedRenderer;->setTargetHdrSdrRatio(F)V

    goto :goto_1

    :cond_1
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/ThreadedRenderer;->setColorMode(I)F

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmHdrRenderState(Landroid/view/ViewRootImpl;)Landroid/view/HdrRenderState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/HdrRenderState;->getRenderHdrSdrRatio()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ThreadedRenderer;->setTargetHdrSdrRatio(F)V

    :goto_1
    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmInvalidateForScreenshotRunnable(Landroid/view/ViewRootImpl;)Ljava/lang/Runnable;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Landroid/view/ViewRootImpl$W$1;

    invoke-direct {v2, p0, v1, v0}, Landroid/view/ViewRootImpl$W$1;-><init>(Landroid/view/ViewRootImpl$W;Ljava/lang/String;Landroid/view/ViewRootImpl;)V

    invoke-static {v0, v2}, Landroid/view/ViewRootImpl;->-$$Nest$fputmInvalidateForScreenshotRunnable(Landroid/view/ViewRootImpl;Ljava/lang/Runnable;)V

    :cond_2
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmInvalidateForScreenshotRunnable(Landroid/view/ViewRootImpl;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public greylist-max-o moved(II)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchMoved(II)V

    :cond_0
    return-void
.end method

.method public blacklist onExecutingWindowStateTransactionItem()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl$W;->mIsFromTransactionItem:Z

    return-void
.end method

.method public greylist-max-o requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchRequestKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    :cond_0
    return-void
.end method

.method public blacklist requestScrollCapture(Landroid/view/IScrollCaptureResponseListener;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchScrollCaptureRequest(Landroid/view/IScrollCaptureResponseListener;)V

    :cond_0
    return-void
.end method

.method public blacklist resized(Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIIZLandroid/window/ActivityWindowInfo;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v12, p4

    iget-boolean v13, v0, Landroid/view/ViewRootImpl$W;->mIsFromTransactionItem:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/ViewRootImpl$W;->mIsFromTransactionItem:Z

    iget-object v2, v0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/view/ViewRootImpl;

    if-nez v15, :cond_0

    return-void

    :cond_0
    sget v2, Landroid/view/InsetsSource;->ID_IME:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    invoke-virtual {v12, v2, v3}, Landroid/view/InsetsState;->isSourceOrDefaultVisible(II)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v2

    invoke-virtual {v15}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    const-string v4, "ViewRootImpl.W#resized"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    :cond_1
    if-eqz v13, :cond_2

    iget-object v2, v15, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_2

    move-object v1, v15

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-static/range {v1 .. v11}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleResized(Landroid/view/ViewRootImpl;Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIIZLandroid/window/ActivityWindowInfo;)V

    return-void

    :cond_2
    const/4 v2, 0x1

    if-nez v13, :cond_3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-ne v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    nop

    :goto_0
    if-eqz v1, :cond_4

    new-instance v3, Landroid/view/InsetsState;

    invoke-direct {v3, v12, v2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    move-object v2, v3

    new-instance v3, Landroid/window/ClientWindowFrames;

    move-object/from16 v4, p1

    invoke-direct {v3, v4}, Landroid/window/ClientWindowFrames;-><init>(Landroid/window/ClientWindowFrames;)V

    new-instance v4, Landroid/util/MergedConfiguration;

    move-object/from16 v5, p3

    invoke-direct {v4, v5}, Landroid/util/MergedConfiguration;-><init>(Landroid/util/MergedConfiguration;)V

    move-object v12, v2

    move-object v5, v4

    goto :goto_1

    :cond_4
    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object v3, v4

    :goto_1
    move-object v14, v15

    move-object v2, v15

    move-object v15, v3

    move/from16 v16, p2

    move-object/from16 v17, v5

    move-object/from16 v18, v12

    move/from16 v19, p5

    move/from16 v20, p6

    move/from16 v21, p7

    move/from16 v22, p8

    move/from16 v23, p9

    move-object/from16 v24, p10

    invoke-static/range {v14 .. v24}, Landroid/view/ViewRootImpl;->-$$Nest$mdispatchResized(Landroid/view/ViewRootImpl;Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIIZLandroid/window/ActivityWindowInfo;)V

    return-void
.end method

.method public blacklist showInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 5

    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    const-string v3, "ViewRootImpl.W#showInsets"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    :cond_0
    const/16 v1, 0x1c

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p3, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    invoke-static {v0, p1, p2, p3}, Landroid/view/ViewRootImpl;->-$$Nest$mshowInsets(Landroid/view/ViewRootImpl;IZLandroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p3, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :goto_0
    return-void
.end method

.method public blacklist windowFocusInTaskChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->-$$Nest$mwindowFocusInTaskChanged(Landroid/view/ViewRootImpl;Z)V

    :cond_0
    return-void
.end method
