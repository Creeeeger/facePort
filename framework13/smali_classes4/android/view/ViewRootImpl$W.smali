.class Landroid/view/ViewRootImpl$W;
.super Landroid/view/IWindow$Stub;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "W"
.end annotation


# instance fields
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
    .param p1, "viewAncestor"    # Landroid/view/ViewRootImpl;

    .line 11925
    invoke-direct {p0}, Landroid/view/IWindow$Stub;-><init>()V

    .line 11926
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    .line 11927
    iget-object v0, p1, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iput-object v0, p0, Landroid/view/ViewRootImpl$W;->mWindowSession:Landroid/view/IWindowSession;

    .line 11928
    return-void
.end method

.method private static greylist-max-o checkCallingPermission(Ljava/lang/String;)I
    .locals 3
    .param p0, "permission"    # Ljava/lang/String;

    .line 12004
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 12005
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 12004
    invoke-interface {v0, p0, v1, v2}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 12006
    :catch_0
    move-exception v0

    .line 12007
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method


# virtual methods
.method public greylist-max-o closeSystemDialogs(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 12045
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 12046
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 12047
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchCloseSystemDialogs(Ljava/lang/String;)V

    .line 12049
    :cond_0
    return-void
.end method

.method public greylist-max-o dispatchAppVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 11988
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 11989
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 11990
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchAppVisibility(Z)V

    .line 11992
    :cond_0
    return-void
.end method

.method public greylist-max-o dispatchDragEvent(Landroid/view/DragEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 12076
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 12077
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 12078
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 12080
    :cond_0
    return-void
.end method

.method public blacklist dispatchFinishMovingTask()V
    .locals 1

    .line 12118
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 12119
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 12120
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->dispatchFinishMovingTask()V

    .line 12123
    .end local v0    # "viewAncestor":Landroid/view/ViewRootImpl;
    :cond_0
    return-void
.end method

.method public greylist-max-o dispatchGetNewSurface()V
    .locals 1

    .line 11996
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 11997
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 11998
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->dispatchGetNewSurface()V

    .line 12000
    :cond_0
    return-void
.end method

.method public blacklist dispatchLetterboxDirectionChanged(I)V
    .locals 1
    .param p1, "direction"    # I

    .line 12148
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 12149
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 12150
    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->-$$Nest$mdispatchLetterboxDirectionChanged(Landroid/view/ViewRootImpl;I)V

    .line 12152
    :cond_0
    return-void
.end method

.method public blacklist dispatchSPenGestureEvent([Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "events"    # [Landroid/view/InputEvent;

    .line 12138
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 12139
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 12140
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchSPenGestureEvent([Landroid/view/InputEvent;)V

    .line 12142
    :cond_0
    return-void
.end method

.method public blacklist dispatchSmartClipRemoteRequest(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 1
    .param p1, "request"    # Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    .line 12128
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 12129
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 12130
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchSmartClipRemoteRequest(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V

    .line 12132
    :cond_0
    return-void
.end method

.method public greylist-max-o dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "sync"    # Z

    .line 12065
    if-eqz p6, :cond_0

    .line 12067
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mWindowSession:Landroid/view/IWindowSession;

    invoke-virtual {p0}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowSession;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12069
    goto :goto_0

    .line 12068
    :catch_0
    move-exception v0

    .line 12071
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist dispatchWallpaperOffsets(FFFFFZ)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "xStep"    # F
    .param p4, "yStep"    # F
    .param p5, "zoom"    # F
    .param p6, "sync"    # Z

    .line 12054
    if-eqz p6, :cond_0

    .line 12056
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mWindowSession:Landroid/view/IWindowSession;

    invoke-virtual {p0}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12058
    goto :goto_0

    .line 12057
    :catch_0
    move-exception v0

    .line 12060
    :cond_0
    :goto_0
    return-void
.end method

.method public greylist-max-o dispatchWindowShown()V
    .locals 1

    .line 12092
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 12093
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 12094
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->dispatchWindowShown()V

    .line 12096
    :cond_0
    return-void
.end method

.method public greylist-max-o executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 5
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;
    .param p3, "out"    # Landroid/os/ParcelFileDescriptor;

    .line 12013
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 12014
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_2

    .line 12015
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 12016
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 12017
    const-string v2, "android.permission.DUMP"

    invoke-static {v2}, Landroid/view/ViewRootImpl$W;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 12024
    const/4 v2, 0x0

    .line 12026
    .local v2, "clientStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v2, v3

    .line 12027
    invoke-static {v1, p1, p2, v2}, Landroid/view/ViewDebug;->dispatchCommand(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12031
    nop

    .line 12033
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 12031
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 12028
    :catch_0
    move-exception v3

    .line 12029
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12031
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_2

    .line 12033
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 12036
    :goto_0
    goto :goto_3

    .line 12034
    :catch_1
    move-exception v3

    .line 12035
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 12031
    :goto_1
    if-eqz v2, :cond_0

    .line 12033
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 12036
    goto :goto_2

    .line 12034
    :catch_2
    move-exception v4

    .line 12035
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 12038
    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    throw v3

    .line 12019
    .end local v2    # "clientStream":Ljava/io/OutputStream;
    :cond_1
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Insufficient permissions to invoke executeCommand() from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 12020
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 12021
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 12041
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    :goto_3
    return-void
.end method

.method public blacklist freeformResizeGuideViewChanged(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .line 12178
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 12179
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 12180
    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->-$$Nest$mfreeformResizeGuideViewChanged(Landroid/view/ViewRootImpl;Z)V

    .line 12182
    :cond_0
    return-void
.end method

.method public blacklist hideInsets(IZ)V
    .locals 5
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z

    .line 11967
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 11968
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz p2, :cond_0

    .line 11969
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    .line 11970
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 11969
    const-string v4, "ViewRootImpl.W#hideInsets"

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 11973
    :cond_0
    if-eqz v0, :cond_1

    .line 11974
    invoke-static {v0, p1, p2}, Landroid/view/ViewRootImpl;->-$$Nest$mhideInsets(Landroid/view/ViewRootImpl;IZ)V

    .line 11976
    :cond_1
    return-void
.end method

.method public blacklist insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    .locals 1
    .param p1, "insetsState"    # Landroid/view/InsetsState;
    .param p2, "activeControls"    # [Landroid/view/InsetsSourceControl;

    .line 11945
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 11946
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 11947
    invoke-static {v0, p1, p2}, Landroid/view/ViewRootImpl;->-$$Nest$mdispatchInsetsControlChanged(Landroid/view/ViewRootImpl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V

    .line 11949
    :cond_0
    return-void
.end method

.method public greylist-max-o moved(II)V
    .locals 1
    .param p1, "newX"    # I
    .param p2, "newY"    # I

    .line 11980
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 11981
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 11982
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchMoved(II)V

    .line 11984
    :cond_0
    return-void
.end method

.method public greylist-max-o requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .locals 1
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p2, "deviceId"    # I

    .line 12100
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 12101
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 12102
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchRequestKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    .line 12104
    :cond_0
    return-void
.end method

.method public blacklist requestScrollCapture(Landroid/view/IScrollCaptureResponseListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/IScrollCaptureResponseListener;

    .line 12108
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 12109
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 12110
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchScrollCaptureRequest(Landroid/view/IScrollCaptureResponseListener;)V

    .line 12112
    :cond_0
    return-void
.end method

.method public blacklist resized(Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIII)V
    .locals 12
    .param p1, "frames"    # Landroid/window/ClientWindowFrames;
    .param p2, "reportDraw"    # Z
    .param p3, "mergedConfiguration"    # Landroid/util/MergedConfiguration;
    .param p4, "insetsState"    # Landroid/view/InsetsState;
    .param p5, "forceLayout"    # Z
    .param p6, "alwaysConsumeSystemBars"    # Z
    .param p7, "displayId"    # I
    .param p8, "syncSeqId"    # I
    .param p9, "resizeMode"    # I

    .line 11935
    move-object v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl;

    .line 11936
    .local v1, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_0

    .line 11937
    move-object v2, v1

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v2 .. v11}, Landroid/view/ViewRootImpl;->-$$Nest$mdispatchResized(Landroid/view/ViewRootImpl;Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIII)V

    .line 11940
    :cond_0
    return-void
.end method

.method public blacklist showInsets(IZ)V
    .locals 5
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z

    .line 11953
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 11954
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz p2, :cond_0

    .line 11955
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    .line 11956
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 11955
    const-string v4, "ViewRootImpl.W#showInsets"

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 11959
    :cond_0
    if-eqz v0, :cond_1

    .line 11960
    invoke-static {v0, p1, p2}, Landroid/view/ViewRootImpl;->-$$Nest$mshowInsets(Landroid/view/ViewRootImpl;IZ)V

    .line 11962
    :cond_1
    return-void
.end method

.method public greylist-max-o updatePointerIcon(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 12084
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 12085
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 12086
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl;->updatePointerIcon(FF)V

    .line 12088
    :cond_0
    return-void
.end method

.method public greylist-max-o windowFocusChanged(ZZ)V
    .locals 1
    .param p1, "hasFocus"    # Z
    .param p2, "touchEnabled"    # Z

    .line 12168
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 12169
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 12170
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->windowFocusChanged(Z)V

    .line 12172
    :cond_0
    return-void
.end method

.method public blacklist windowFocusInTaskChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .line 12158
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 12159
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 12160
    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->-$$Nest$mwindowFocusInTaskChanged(Landroid/view/ViewRootImpl;Z)V

    .line 12162
    :cond_0
    return-void
.end method
