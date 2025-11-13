.class public Lcom/android/internal/view/BaseIWindow;
.super Landroid/view/IWindow$Stub;
.source "BaseIWindow.java"


# instance fields
.field private greylist-max-o mSession:Landroid/view/IWindowSession;


# direct methods
.method public constructor greylist-max-p <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroid/view/IWindow$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o closeSystemDialogs(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 112
    return-void
.end method

.method public greylist-max-o dispatchAppVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 87
    return-void
.end method

.method public greylist-max-o dispatchDragEvent(Landroid/view/DragEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 127
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/BaseIWindow;->mSession:Landroid/view/IWindowSession;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/view/IWindowSession;->reportDropResult(Landroid/view/IWindow;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 133
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist dispatchFinishMovingTask()V
    .locals 0

    .line 179
    return-void
.end method

.method public greylist-max-o dispatchGetNewSurface()V
    .locals 0

    .line 91
    return-void
.end method

.method public blacklist dispatchLetterboxDirectionChanged(I)V
    .locals 0
    .param p1, "direction"    # I

    .line 185
    return-void
.end method

.method public blacklist dispatchSPenGestureEvent([Landroid/view/InputEvent;)V
    .locals 0
    .param p1, "events"    # [Landroid/view/InputEvent;

    .line 191
    return-void
.end method

.method public blacklist dispatchSmartClipRemoteRequest(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 0
    .param p1, "request"    # Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    .line 173
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

    .line 143
    if-eqz p6, :cond_0

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/BaseIWindow;->mSession:Landroid/view/IWindowSession;

    invoke-virtual {p0}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowSession;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 149
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

    .line 117
    if-eqz p6, :cond_0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/BaseIWindow;->mSession:Landroid/view/IWindowSession;

    invoke-virtual {p0}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 123
    :cond_0
    :goto_0
    return-void
.end method

.method public greylist-max-o dispatchWindowShown()V
    .locals 0

    .line 153
    return-void
.end method

.method public greylist-max-o executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;
    .param p3, "out"    # Landroid/os/ParcelFileDescriptor;

    .line 101
    if-eqz p3, :cond_0

    .line 103
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported command "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 108
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist freeformResizeGuideViewChanged(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .line 203
    return-void
.end method

.method public blacklist hideInsets(IZ)V
    .locals 0
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z

    .line 79
    return-void
.end method

.method public blacklist insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    .locals 0
    .param p1, "insetsState"    # Landroid/view/InsetsState;
    .param p2, "activeControls"    # [Landroid/view/InsetsSourceControl;

    .line 71
    return-void
.end method

.method public greylist-max-o moved(II)V
    .locals 0
    .param p1, "newX"    # I
    .param p2, "newY"    # I

    .line 83
    return-void
.end method

.method public greylist-max-o requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .locals 0
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p2, "deviceId"    # I

    .line 157
    return-void
.end method

.method public blacklist requestScrollCapture(Landroid/view/IScrollCaptureResponseListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/IScrollCaptureResponseListener;

    .line 162
    :try_start_0
    new-instance v0, Landroid/view/ScrollCaptureResponse$Builder;

    invoke-direct {v0}, Landroid/view/ScrollCaptureResponse$Builder;-><init>()V

    const-string v1, "Not Implemented"

    .line 163
    invoke-virtual {v0, v1}, Landroid/view/ScrollCaptureResponse$Builder;->setDescription(Ljava/lang/String;)Landroid/view/ScrollCaptureResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ScrollCaptureResponse$Builder;->build()Landroid/view/ScrollCaptureResponse;

    move-result-object v0

    .line 162
    invoke-interface {p1, v0}, Landroid/view/IScrollCaptureResponseListener;->onScrollCaptureResponse(Landroid/view/ScrollCaptureResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 168
    :goto_0
    return-void
.end method

.method public blacklist resized(Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIII)V
    .locals 2
    .param p1, "frames"    # Landroid/window/ClientWindowFrames;
    .param p2, "reportDraw"    # Z
    .param p3, "mergedConfiguration"    # Landroid/util/MergedConfiguration;
    .param p4, "insetsState"    # Landroid/view/InsetsState;
    .param p5, "forceLayout"    # Z
    .param p6, "alwaysConsumeSystemBars"    # Z
    .param p7, "displayId"    # I
    .param p8, "seqId"    # I
    .param p9, "resizeMode"    # I

    .line 60
    if-eqz p2, :cond_0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/BaseIWindow;->mSession:Landroid/view/IWindowSession;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1, p8}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 66
    :cond_0
    :goto_0
    return-void
.end method

.method public greylist-max-o setSession(Landroid/view/IWindowSession;)V
    .locals 0
    .param p1, "session"    # Landroid/view/IWindowSession;

    .line 53
    iput-object p1, p0, Lcom/android/internal/view/BaseIWindow;->mSession:Landroid/view/IWindowSession;

    .line 54
    return-void
.end method

.method public blacklist showInsets(IZ)V
    .locals 0
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z

    .line 75
    return-void
.end method

.method public greylist-max-o updatePointerIcon(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 137
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 138
    return-void
.end method

.method public greylist-max-o windowFocusChanged(ZZ)V
    .locals 0
    .param p1, "hasFocus"    # Z
    .param p2, "touchEnabled"    # Z

    .line 96
    return-void
.end method

.method public blacklist windowFocusInTaskChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .line 197
    return-void
.end method
