.class public final Landroid/media/projection/MediaProjection;
.super Ljava/lang/Object;
.source "MediaProjection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/MediaProjection$CallbackRecord;,
        Landroid/media/projection/MediaProjection$MediaProjectionCallback;,
        Landroid/media/projection/MediaProjection$Callback;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaProjection"


# instance fields
.field private final greylist-max-o mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/projection/MediaProjection$Callback;",
            "Landroid/media/projection/MediaProjection$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mImpl:Landroid/media/projection/IMediaProjection;

.field private blacklist mProjectionService:Landroid/media/projection/IMediaProjectionManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbacks(Landroid/media/projection/MediaProjection;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/media/projection/MediaProjection;->mCallbacks:Ljava/util/Map;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/media/projection/IMediaProjection;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "impl"    # Landroid/media/projection/IMediaProjection;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/projection/MediaProjection;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    .line 64
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/projection/MediaProjection;->mCallbacks:Ljava/util/Map;

    .line 65
    iput-object p1, p0, Landroid/media/projection/MediaProjection;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Landroid/media/projection/MediaProjection;->mImpl:Landroid/media/projection/IMediaProjection;

    .line 68
    :try_start_0
    new-instance v1, Landroid/media/projection/MediaProjection$MediaProjectionCallback;

    invoke-direct {v1, p0, v0}, Landroid/media/projection/MediaProjection$MediaProjectionCallback;-><init>(Landroid/media/projection/MediaProjection;Landroid/media/projection/MediaProjection$MediaProjectionCallback-IA;)V

    invoke-interface {p2, v1}, Landroid/media/projection/IMediaProjection;->start(Landroid/media/projection/IMediaProjectionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    nop

    .line 72
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to start media projection"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist getProjectionService()Landroid/media/projection/IMediaProjectionManager;
    .locals 1

    .line 223
    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    if-nez v0, :cond_0

    .line 224
    nop

    .line 225
    const-string v0, "media_projection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 224
    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v0

    iput-object v0, p0, Landroid/media/projection/MediaProjection;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    .line 227
    :cond_0
    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    return-object v0
.end method


# virtual methods
.method public blacklist createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig$Builder;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    .locals 10
    .param p1, "virtualDisplayConfig"    # Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .param p2, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 188
    :try_start_0
    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mImpl:Landroid/media/projection/IMediaProjection;

    .line 189
    invoke-interface {v0}, Landroid/media/projection/IMediaProjection;->getTaskRecordingWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v0

    .line 190
    .local v0, "taskWindowContainerToken":Landroid/window/WindowContainerToken;
    const/4 v1, 0x0

    .line 192
    .local v1, "windowContext":Landroid/content/Context;
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 193
    iget-object v3, p0, Landroid/media/projection/MediaProjection;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5, v2}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v3

    move-object v1, v3

    .line 195
    nop

    .line 196
    invoke-virtual {v1}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v3

    .line 195
    invoke-static {v3}, Landroid/view/ContentRecordingSession;->createDisplaySession(Landroid/os/IBinder;)Landroid/view/ContentRecordingSession;

    move-result-object v3

    .local v3, "session":Landroid/view/ContentRecordingSession;
    goto :goto_0

    .line 198
    .end local v3    # "session":Landroid/view/ContentRecordingSession;
    :cond_0
    nop

    .line 199
    invoke-virtual {v0}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 198
    invoke-static {v3}, Landroid/view/ContentRecordingSession;->createTaskSession(Landroid/os/IBinder;)Landroid/view/ContentRecordingSession;

    move-result-object v3

    .line 201
    .restart local v3    # "session":Landroid/view/ContentRecordingSession;
    :goto_0
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setWindowManagerMirroring(Z)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 202
    iget-object v4, p0, Landroid/media/projection/MediaProjection;->mContext:Landroid/content/Context;

    const-class v5, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    .line 203
    .local v4, "dm":Landroid/hardware/display/DisplayManager;
    nop

    .line 204
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->build()Landroid/hardware/display/VirtualDisplayConfig;

    move-result-object v6

    .line 203
    move-object v5, p0

    move-object v7, p2

    move-object v8, p3

    move-object v9, v1

    invoke-virtual/range {v4 .. v9}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Landroid/media/projection/MediaProjection;Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;Landroid/content/Context;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v5

    .line 205
    .local v5, "virtualDisplay":Landroid/hardware/display/VirtualDisplay;
    if-nez v5, :cond_1

    .line 210
    return-object v2

    .line 212
    :cond_1
    invoke-virtual {v5}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/ContentRecordingSession;->setDisplayId(I)Landroid/view/ContentRecordingSession;

    .line 214
    invoke-direct {p0}, Landroid/media/projection/MediaProjection;->getProjectionService()Landroid/media/projection/IMediaProjectionManager;

    move-result-object v2

    iget-object v6, p0, Landroid/media/projection/MediaProjection;->mImpl:Landroid/media/projection/IMediaProjection;

    invoke-interface {v2, v3, v6}, Landroid/media/projection/IMediaProjectionManager;->setContentRecordingSession(Landroid/view/ContentRecordingSession;Landroid/media/projection/IMediaProjection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    return-object v5

    .line 216
    .end local v0    # "taskWindowContainerToken":Landroid/window/WindowContainerToken;
    .end local v1    # "windowContext":Landroid/content/Context;
    .end local v3    # "session":Landroid/view/ContentRecordingSession;
    .end local v4    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v5    # "virtualDisplay":Landroid/hardware/display/VirtualDisplay;
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "dpi"    # I
    .param p5, "flags"    # I
    .param p6, "surface"    # Landroid/view/Surface;
    .param p7, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;
    .param p8, "handler"    # Landroid/os/Handler;

    .line 152
    new-instance v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/hardware/display/VirtualDisplayConfig$Builder;-><init>(Ljava/lang/String;III)V

    .line 153
    invoke-virtual {v0, p5}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setFlags(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    move-result-object v0

    .line 154
    .local v0, "builder":Landroid/hardware/display/VirtualDisplayConfig$Builder;
    if-eqz p6, :cond_0

    .line 155
    invoke-virtual {v0, p6}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setSurface(Landroid/view/Surface;)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 159
    :cond_0
    iget-object v1, p0, Landroid/media/projection/MediaProjection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v1

    .line 160
    .local v1, "display":Landroid/view/Display;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 161
    invoke-virtual {v0, v3}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setDisplayIdToMirror(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 165
    .end local v1    # "display":Landroid/view/Display;
    :cond_1
    invoke-virtual {p0, v0, p7, p8}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig$Builder;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    .line 166
    .local v1, "virtualDisplay":Landroid/hardware/display/VirtualDisplay;
    return-object v1
.end method

.method public greylist-max-o createVirtualDisplay(Ljava/lang/String;IIIZLandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "dpi"    # I
    .param p5, "isSecure"    # Z
    .param p6, "surface"    # Landroid/view/Surface;
    .param p7, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;
    .param p8, "handler"    # Landroid/os/Handler;

    .line 112
    const/16 v0, 0x12

    .line 114
    .local v0, "flags":I
    if-eqz p5, :cond_0

    .line 115
    or-int/lit8 v0, v0, 0x4

    .line 117
    :cond_0
    new-instance v1, Landroid/hardware/display/VirtualDisplayConfig$Builder;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/hardware/display/VirtualDisplayConfig$Builder;-><init>(Ljava/lang/String;III)V

    .line 118
    invoke-virtual {v1, v0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setFlags(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    move-result-object v1

    .line 119
    .local v1, "builder":Landroid/hardware/display/VirtualDisplayConfig$Builder;
    if-eqz p6, :cond_1

    .line 120
    invoke-virtual {v1, p6}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setSurface(Landroid/view/Surface;)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 122
    :cond_1
    invoke-virtual {p0, v1, p7, p8}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig$Builder;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v2

    .line 123
    .local v2, "virtualDisplay":Landroid/hardware/display/VirtualDisplay;
    return-object v2
.end method

.method public greylist-max-o getProjection()Landroid/media/projection/IMediaProjection;
    .locals 1

    .line 246
    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mImpl:Landroid/media/projection/IMediaProjection;

    return-object v0
.end method

.method public whitelist registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/media/projection/MediaProjection$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 84
    if-eqz p1, :cond_1

    .line 87
    if-nez p2, :cond_0

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    move-object p2, v0

    .line 90
    :cond_0
    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mCallbacks:Ljava/util/Map;

    new-instance v1, Landroid/media/projection/MediaProjection$CallbackRecord;

    invoke-direct {v1, p1, p2}, Landroid/media/projection/MediaProjection$CallbackRecord;-><init>(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void

    .line 85
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist stop()V
    .locals 3

    .line 235
    :try_start_0
    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mImpl:Landroid/media/projection/IMediaProjection;

    invoke-interface {v0}, Landroid/media/projection/IMediaProjection;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaProjection"

    const-string v2, "Unable to stop projection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist unregisterCallback(Landroid/media/projection/MediaProjection$Callback;)V
    .locals 2
    .param p1, "callback"    # Landroid/media/projection/MediaProjection$Callback;

    .line 100
    if-eqz p1, :cond_0

    .line 103
    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
